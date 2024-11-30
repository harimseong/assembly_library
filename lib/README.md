## Assembly Library Project
---
This document describes development process of the project.

##### Requirements
---
###### Function Implementation

This project aims at re-writing following functions in assembly language.
- strlen(3)
- strcpy(3)
- strcmp(3)
- strdup(3)
- read(2)
- write(2)
main function is required to test these functions.
###### Constraints
- Conforms to System V AMD64 ABI calling convention.
- Must be able to generate position independent executable.
- Requires system call error handling (e.g. errno)

##### Expected Knowledges
---
- x86 instructions
- UNIX system call interface (read and write)
- Intel assembly language syntax
- file format (Mach-O for macOS) possibly?

### Phase 1: Understand Assembly
---
##### 1. Generate assembly of simple c program to understand basic assembly.
---
```
// simple.c
int main(int argc, char** argv)
{
	return argc;

```

compile it with `clang simple.c -S -O0 --target=x86_64-apple-darwin-macho`, then `simple.s` is generated

```
	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 5	sdk_version 14, 5
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
```

Things I didn't know of are:
- `.cfi_startproc`
- `.cfi_def_cfa_offset 16`
- `.cfi_def_cfa_register 16`
- `.cfi_endproc`
- `.subsections_via_symbols`

Things I know partially or can relate to something I know already are:
- `.section ...`
- `.build_version ...`
- `.globl _main`
- `.p2align ...`

##### 1-1. Learn Assemble Directives
---
- ###### CFI (Call Frame Information)
	reference
	https://sourceware.org/binutils/docs/as/CFI-directives.html
	
	blog
	https://www.imperialviolet.org/2017/01/18/cfi.html
	
	cfi instructions is enabled by `-fasynchronous-unwind-tables` and disabled by `-fno-asynchronous-unwind-tables` compiler option.

- ###### `.subsections_via_symbols`
	[OS X Assembler Reference - Directives for Dead-Code Stripping](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html)
	It tells static link editor that the sections of the object file can be divided into individual blocks.

- `.section	__TEXT,__text,regular,pure_instructions`
  	
	[OS X Assembler Reference - Directives for Designating the Current Section](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html)
	`.section  segname, sectname [[[, type], attribute], sizeof_stub]`
	segname = \_\_TEXT\_\_
	sectname = \_\_text
	type = regular
	attribute = pure_instructions
	
	[OS X Assembler Reference - Section Types and Attributes](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html#//apple_ref/doc/uid/TP30000823-CJBIFBJG)
	regular section may contain any kind of data.
	pure_instructions means this section contains nothing but machine instructions.

- `.build_version macos, 14, 5	sdk_version 14, 5`
	https://forums.developer.apple.com/forums/thread/736942
	could not find any document containing this assembler directive.
	assume it is miscellaneous directive because generated assembly code targeted to specific architecture already.

- `.globl _main`
  	
	[OS X Assembler Reference - Directives for Dealing With Symbol](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html),
	`.globl  symbol_name`
	This directive makes symbol_name external.

- `.p2align  4, 0x90`
  	
	[OS X Assembler Reference - Directives for Moving the Location Counter](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html),
	`.p2align  align_expression [, 1_byte_fill_expression [, max_bytes_to_fill]]`
	align location counter to 2^{align_expression} bytes and fill space between current and next location counter with {1_byte_fill_expression}.
	if bytes of the space is equal to or larger than {max_bytes_to_fill}, this directive does nothing.

[NASM - Assembler Directives - Section](https://www.nasm.us/xdoc/2.16.03/html/nasmdoc7.html#section-7.3)
[NASM - Output Formats - Mach Object ](https://www.nasm.us/xdoc/2.16.03/html/nasmdoc8.html#section-8.8)
[GAS - Sections and Relocation](https://ftp.gnu.org/old-gnu/Manuals/gas/html_chapter/as_4.html#SEC39)
[GAS - .section name](https://ftp.gnu.org/old-gnu/Manuals/gas/html_chapter/as_7.html#SEC119)

##### 2. Interpret the Assembly Code
___
compiled `simple.c` with 
`clang simple.c -S -mllvm --x86-asm-syntax=intel -O3 --target=x86_64-apple-darwin-macho -fno-asynchronous-unwind-tables`

```
	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 5	sdk_version 14, 5
	.intel_syntax noprefix
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	pop	rbp
	ret
                                        ## -- End function
.subsections_via_symbols
```
There are some assembler directives that are still ambiguous. Instead of trying to find what are they, start to consider NASM directives. I must write assembly code that NASM can assemble.
###### translation to NASM 
1. `.section`
	text section: `section .text`
2. `.globl`
	external symbol: `global symbol_name`
3. `.p2align power_of_2`
	alignment directive: `align bytes, optional` or `alignb bytes`

```
section .text
global  _main
align   16
_main:
	push rbp
	mov  rbp, rsp
	mov  eax, edi
	pop  rbp
	ret
```

######  Calling Convention of System V AMD64 ABI
[System V ABI](https://wiki.osdev.org/System_V_ABI)
- function parameters: `rdi, rsi, rdx, rcx, r8, r9`
- callee saved: `rbx, rsp, rbp, r12, r13, r14, r15`
- caller saved: function parameters + `r10, r11`
- return: `rax`

###### Instructions
[x86_64 cheatsheet in AT&T syntax](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf)
intel assembly instruction syntax: `inst [reg0, reg1, ...]`
If there are more than one register, reg0 is source register.
1. `push rbp`
	`rbp`is base pointer and callee saved register. `push` will subtract size of `rbp` (8 bytes) from `rsp` and set the top of the stack pointed by `rsp` to `rbp`.
	
2. `mov rbp, rsp`
	set `rbp` to `rsp`. new base pointer is current stack point.
3. `mov eax, edi`
	`rdi` contains value of `int argc` according to the calling convention. set return value register, `eax`, to `int argc` before return.
	
4. `pop rbp`
	before return, restore callee saved `rbp` from the top of the stack and increment `rsp`.
5. `ret`
	near return - jump to an address located on the top of the stack and pops it from the stack.

##### 3. Assemble, Link and Execute the Code
___
- Assemble command: `nasm -f macho64 simple.s`

- Link command with `clang`: `clang simple.o -target=x86_64-apple-darwin-macho`
	`ld: warning: no platform load command found in '/Users/hseong/assembly_practice/lib/simple_nasm.o', assuming: macOS`
	warning disappears if `-Wl,-ld_classic` is appended to the command.
	`ld-classic` can be found in macOS man page

- Link command with `ld`
	`ld simple.o` 
		error: `Missing -platform_version option`
	
	`ld simple.o -platform_version macos 14.5 14.5`
		warning: `no platform load command found in '/Users/hseong/assembly_practice/lib/simple_nasm.o', assuming: macOS`
	
	`ld simple.o -platform_version macos 14.5 14.5 -ld_classic`
		error: `dynamic executables or dylibs must link with libSystem.dylib for architecture x86_64`
		Check implicit linker option that working command `clang simple.o -target=x86_64-apple-darwin-macho -v` passed to `ld` by using `-v` `clang` option.
	
	`ld simple.o -platform_version macos 14.5 14.5 -ld_classic -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -lSystem`
		this command works without warning and error.
	
	`ld simple.o -ld_classic`
		this command works fine.
	
	Using `-ld_classic` is necessary to avoid warning.

- Every executables generated with or without warning work as expected.

### Phase 2: Start Writing Code
---
##### 1. strlen
---
function signature: `size_t strlen(const char *s);`
	returns difference of bytes between `s` and an address containing first null terminator.
###### size_t
- `size_t` is defined as `unsigned long` according to `machine/types.h` of macOS SDK.
- C implementation in this machine uses [LP64](https://unix.org/version2/whatsnew/lp64_wp.html), which means `long int` and `unsigned long int` are 64 bits type.
- return register will be `rax`.

###### strlen
- `global strlen` to set it to external symbol.

###### const char*
- `const` is type qualifier provided by compiler.
- need to test how `const` affects generated assembly code.
- `char*` is pointer type which should be 64 bits wide, because of `ptrdiff_t` being `long int`.
- register will be `rdi`. according to [this](#calling-convention-of-system-v-amd64-abi).

###### sub, cmp instruction
- minuend  - subtrahend

###### mov size
[Assembly Intel Syntax](https://en.wikipedia.org/wiki/X86_assembly_language)
- example `mov al, byte [rsp]`

###### symbol `_strlen`
- symbol `strlen` is automatically prepended by `_` clang when main function is compiled. 
- use `_strlen` as symbol name.
- why does this happen?
- gcc option has [-fleading-underscore](https://gcc.gnu.org/onlinedocs/gcc-4.4.0/gcc/Code-Gen-Options.html#index-fleading_002dunderscore-1989) and its counterpart -fno-leading-underscore. clang does not have this option and it seems to use leading underscore by default.
- C compiler prepended underscore to generated mangled identifiers to avoid name collision between assembly code and c code that have same symbol?
[Stack overflow - What is the reason function names are prefixed with an underscore by the compiler](https://stackoverflow.com/questions/5908568/what-is-the-reason-function-names-are-prefixed-with-an-underscore-by-the-compile)

##### 2. strcpy
---
function signature: `char * strcpy(char * dst, const char * src);`
	return `dst` and copy `[src, src_end)` bytes to `[dst, dst + src_end - src)` where `src_end` contains first null-terminator.

###### ret bug
- `ret` instruction in strcpy acts like `ret` in main function, which means the process exits if strcpy returns.
- `mov rsp, rbp` -> `mov rbp, rsp`
- the top of the stack pointed to the stack frame of main function.

##### 3. strcmp
---
function signature: `int strcmp(const char * s1, const char * s2);`
	return difference between first unmatched characters from each null-terminated string.

##### 4. strdup
---
function signature: `char * strdup(const char * s);`
