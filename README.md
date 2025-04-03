# Assembly Library Project

### Requirements

#### Function Implementation

This project aims at re-writing following functions in assembly language.
- strlen(3)
- strcpy(3)
- strcmp(3)
- strdup(3)
- read(2)
- write(2)
- and essential linked list functions and sort for fun.

Makefile is required to build a library consists of the functions.

main function is required to test these functions.
#### Constraints
- Conforms to System V AMD64 ABI calling convention.
- Must be able to generate position independent executable.
- Requires system call error handling (i.e. errno)

#### Expected Knowledges

- x86 instructions
- UNIX system call interface (read and write)
- Intel assembly language syntax
- file format (Mach-O, ELF) to understand the structure of the machine code

#### Environment
- Apple M3, macOS 15
- Intel CPU, WSL2 Ubuntu 24.04
<br/><br/>
## Phase 1: Understand Assembly

#### 1. Generate assembly of simple c program to understand basic assembly.

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
<br/><br/>
#### 1-1. Learn Assemble Directives

##### CFI (Call Frame Information)
	reference
	https://sourceware.org/binutils/docs/as/CFI-directives.html
	
	blog
	https://www.imperialviolet.org/2017/01/18/cfi.html
	
	cfi instructions is enabled by `-fasynchronous-unwind-tables` and disabled by `-fno-asynchronous-unwind-tables` compiler option.


##### `.subsections_via_symbols`
	[OS X Assembler Reference - Directives for Dead-Code Stripping](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html)\
	It tells static link editor that the sections of the object file can be divided into individual blocks.


##### `.section	__TEXT,__text,regular,pure_instructions`
	[OS X Assembler Reference - Directives for Designating the Current Section](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html)\
	`.section  segname, sectname [[[, type], attribute], sizeof_stub]`
	
	segname = \_\_TEXT\_\_\
	sectname = \_\_text\
	type = regular\
	attribute = pure_instructions
	
	[OS X Assembler Reference - Section Types and Attributes](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html#//apple_ref/doc/uid/TP30000823-CJBIFBJG)\
	regular section may contain any kind of data.
	pure_instructions means this section contains nothing but machine instructions.


##### `.build_version macos, 14, 5	sdk_version 14, 5`
	https://forums.developer.apple.com/forums/thread/736942
	Could not find any document containing this assembler directive.
	Assume it is miscellaneous directive because generated assembly code targeted to specific architecture already.


##### `.globl _main`
	[OS X Assembler Reference - Directives for Dealing With Symbol](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html)\
	`.globl  symbol_name`\
	This directive makes symbol_name external.


##### `.p2align  4, 0x90`
	[OS X Assembler Reference - Directives for Moving the Location Counter](https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html)\
	`.p2align  align_expression [, 1_byte_fill_expression [, max_bytes_to_fill]]`\
	Align location counter to 2^{align_expression} bytes and fill space between current and next location counter with {1_byte_fill_expression}.
	If bytes of the space is equal to or larger than {max_bytes_to_fill}, this directive does nothing.

[NASM - Assembler Directives - Section](https://www.nasm.us/xdoc/2.16.03/html/nasmdoc7.html#section-7.3)
[NASM - Output Formats - Mach Object ](https://www.nasm.us/xdoc/2.16.03/html/nasmdoc8.html#section-8.8)
[GAS - Sections and Relocation](https://ftp.gnu.org/old-gnu/Manuals/gas/html_chapter/as_4.html#SEC39)
[GAS - .section name](https://ftp.gnu.org/old-gnu/Manuals/gas/html_chapter/as_7.html#SEC119)
<br/><br/>
#### 2. Interpret the Assembly Code

Compiled `simple.c` with 
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
##### Translation to NASM 
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


#####  Calling Convention of System V AMD64 ABI
[System V ABI](https://wiki.osdev.org/System_V_ABI)
- Function parameters: `rdi, rsi, rdx, rcx, r8, r9`
- Callee saved: `rbx, rsp, rbp, r12, r13, r14, r15`
- Caller saved: function parameters + `r10, r11`
- Return: `rax`
<br/><br/>
##### Instructions
[x86_64 cheatsheet in AT&T syntax](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf)\
Intel assembly instruction syntax: `inst [reg0, reg1, ...]`
If there are more than one register, reg0 is source register.
1. `push rbp`\
	`rbp`is base pointer and callee saved register. `push` will subtract size of `rbp` (8 bytes) from `rsp` and set the top of the stack pointed by `rsp` to `rbp`.
	
2. `mov rbp, rsp`\
	Set `rbp` to `rsp`. new base pointer is current stack point.
3. `mov eax, edi`\
	`rdi` contains value of `int argc` according to the calling convention. set return value register, `eax`, to `int argc` before return.
	
4. `pop rbp`\
	Before return, restore callee saved `rbp` from the top of the stack and increment `rsp`.
5. `ret`\
	Near return - jump to an address located on the top of the stack and pops it from the stack.
<br/><br/>
#### 3. Assemble, Link and Execute the Code

- Assemble command: `nasm -f macho64 simple.s`

- Link command with `clang`: `clang simple.o -target=x86_64-apple-darwin-macho`\
	`ld: warning: no platform load command found in '/Users/hseong/assembly_practice/lib/simple_nasm.o', assuming: macOS`\
	warning disappears if `-Wl,-ld_classic` is appended to the command.
	`ld-classic` can be found in macOS man page

- Link commands with `ld`:
	`ld simple.o`\
		error: `Missing -platform_version option`
	
	`ld simple.o -platform_version macos 14.5 14.5`\
		warning: `no platform load command found in '/Users/hseong/assembly_practice/lib/simple_nasm.o', assuming: macOS`
	
	`ld simple.o -platform_version macos 14.5 14.5 -ld_classic`\
		error: `dynamic executables or dylibs must link with libSystem.dylib for architecture x86_64`\
		Check implicit linker option that working command `clang simple.o -target=x86_64-apple-darwin-macho -v` passed to `ld` by using `-v` `clang` option.
	
	`ld simple.o -platform_version macos 14.5 14.5 -ld_classic -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -lSystem`\
		this command works without warning and error.
	
	`ld simple.o -ld_classic`\
		this command works fine.
	
	Using `-ld_classic` is necessary to avoid warning.

- Every executables generated with or without warning work as expected.
<br/><br/>
## Phase 2: Write Simple Functions

#### 0. Makefile and Miscellaneous

##### Requirements
- There are mandatory targets `LIBRARY_NAME, all, clean, fclean, re`.
- Use `uname` command to decide build environment (e.g. OS and architecture) and assemble & link options.


##### tester
- Add tester target that compiles main function and test functions and links them with the library.
- Examine final machine code by executing `objdump --disassemble --disassembler-options=intel --syms FILENAME > FILENAME.s` command.


##### Cross-assemble
- clang in macOS automatically prepends global symbol with underscore.
- Cross-assemble was not possible by inconsistent symbol name.
- Used NASM pre-defined macro and multi-line macro to resolve the issue.
<br/><br/>
#### 1. strlen

Function signature: `size_t strlen(const char *s);`\
	Returns difference of bytes between `s` and an address containing first null terminator.
 
##### size_t
- `size_t` is defined as `unsigned long` according to `machine/types.h` of macOS SDK.
- C implementation in this machine uses [LP64](https://unix.org/version2/whatsnew/lp64_wp.html), which means `long int` and `unsigned long int` are 64 bits type.
- Return register will be `rax`.


##### strlen
- `global strlen` to set it to external symbol.


##### const char*
- `const` is type qualifier provided by compiler.
- need to test how `const` affects generated assembly code.
- `char*` is pointer type which should be 64 bits wide, because of `ptrdiff_t` being `long int`.
- Register will be `rdi`. according to [this](#calling-convention-of-system-v-amd64-abi).


##### sub, cmp instruction
- minuend  - subtrahend


##### mov size
[Assembly Intel Syntax](https://en.wikipedia.org/wiki/X86_assembly_language)
- example `mov al, byte [rsp]`


##### symbol `_strlen`
- Symbol `strlen` is automatically prepended by `_` clang when main function is compiled. 
- Use `_strlen` as symbol name.
- Why does this happen?
- GCC option has [-fleading-underscore](https://gcc.gnu.org/onlinedocs/gcc-4.4.0/gcc/Code-Gen-Options.html#index-fleading_002dunderscore-1989) and its counterpart -fno-leading-underscore. clang does not have this option and it seems to use leading underscore by default.
- C compiler prepend underscore to generated mangled identifiers to avoid name collision between assembly code and c code that have same symbol.
[Stack overflow - What is the reason function names are prefixed with an underscore by the compiler](https://stackoverflow.com/questions/5908568/what-is-the-reason-function-names-are-prefixed-with-an-underscore-by-the-compile)
- NASM has [preprocessor](https://www.nasm.us/xdoc/2.16.03/html/nasmdoc7.html#section-7.10) for global, local symbol prefix that is useful for mangling symbols.

##### Load Effective Address
- `lea` instruction loads effective address from source to destination. Width of destination should be larger than or equal to source.
- It seems like that the instruction is used when source is indirection.
<br/><br/>
#### 2. strcpy

Function signature: `char * strcpy(char * dst, const char * src);`\
	Return `dst` and copy `[src, src_end)` bytes to `[dst, dst + src_end - src)` where `src_end` contains first null-terminator.

##### `ret` instruction bug
- `ret` instruction in strcpy was working as if it's `ret` in main function, which means the process exits if strcpy returns.
- `mov rsp, rbp` -> `mov rbp, rsp`
- The top of the stack pointed to the stack frame of main function.
<br/><br/>
#### 3. strcmp

Function signature: `int strcmp(const char * s1, const char * s2);`\
	Return difference between first unmatched characters from each null-terminated string.

##### segmentation fault
```
loop:
  ...
  cmp   dl, 0
  setz  al
  ; int a = (dl == 0);
  cmp   cl, 0
  setz  al
  ; a = (cl == 0);
  cmp   dl, cl
  setne al
  ; a = (dl != cl);
  cmp   al, 1
  jne   loop
```
Value of `al` depends on `dl != cl` only. assignment to `a` must be bitwise OR assignment.
<br/><br/>
#### 4. strdup

Function signature: `char * strdup(const char * s);`\
	Returns newly allocated null-terminated string which is a copy of the parameter `s`.
	
- 
<br/><br/>
### System Call

System call functions like read(2) are libc function that wraps around assembly instructions. I need to rewrite those with special instructions that enters kernel space with higher privilege.

- macOS system libraries are linked with linker option `-lSystem -syslibroot PATH`.
- `find PATH -name 'libSystem*'` command lists `usr/lib/libSystem.tbd` and similar names.
- `.tbd` is text-based stub libraries according to [a stack overflow post](https://stackoverflow.com/questions/31450690/why-xcode-7-shows-tbd-instead-of-dylib).
- It contains actual path `/usr/lib/system/` where binary libraries are found.
- There are `libsystem_kernel.dylib`, `libsystem_platform.dylib`, `libsystem_pthread.dylib`. platform and pthread libraries are related to concurrency and kernel library contains the others including system call such as read, write.
- `libsystem_kernel.dylib` contains user-level assembly code that is written in Apple's custom ISA based on ARMv8-A(until M3).
- user-space `read` implementation is acquired from a command `objdump --disassemble -t libsystem_kernal.dylib`
###### `read`
```
_read:
    1da0:	70 00 80 d2	mov	x16, #3
	; system call number
    1da4:	01 10 00 d4	svc	#0x80
	; SuperVisor Call
    1da8:	e3 00 00 54	b.lo	0x1dc4
	; branch unsigned lower: branch if Carry = 0 (unsigned lower) in status register
    1dac:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
	; store pair of registers, x29 at [sp - 16] and x30 at [sp - 8] and set sp = sp - 16.
    1db0:	fd 03 00 91	mov	x29, sp
	; store sp
    1db4:	00 03 00 94	bl	_cerror
	; branch and link, similar to x86 call
    1db8:	bf 03 00 91	mov	sp, x29
	; restore sp
    1dbc:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
	; load pair of register
    1dc0:	c0 03 5f d6	ret
    1dc4:	c0 03 5f d6	ret
	; duplicate ret instructions?
```
##### Reference
[Exceptions on macOS](https://karol-mazurek.medium.com/exceptions-on-macos-2c4bd6a9fd31)\
[Arm A-profile A64 Instruction Set Architecture](https://developer.arm.com/documentation/ddi0602/2024-09)\
[Mac OS X and iOS Internals](https://newosxbook.com/home.html)\

##### XNU system call
[syscall table creation script - xnu/bsd/kern/makesyscalls.sh](https://github.com/apple-oss-distributions/xnu/blob/main/bsd/kern/makesyscalls.sh)\
[syscall master file - xnu/kern/syscalls.master](https://github.com/opensource-apple/xnu/blob/master/bsd/kern/syscalls.master)
[interrupt\(\), kernel_trap\(\), user_trap\(\) - xnu/osfmk/i386/trap.c](https://github.com/apple-oss-distributions/xnu/blob/main/osfmk/i386/trap.c)\
[trap types - xnu/osfmk/i386/trap.h](https://github.com/apple-oss-distributions/xnu/blob/main/osfmk/i386/trap.h)\
[system call classes - xnu/osfmk/mach/i386/syscall_sw.](https://github.com/apple-oss-distributions/xnu/blob/main/osfmk/mach/i386/syscall_sw.h)
[unix\_syscall\(\) - xnu/bsd/dev/i386/systemcalls.c](https://github.com/apple-oss-distributions/xnu/blob/main/bsd/dev/i386/systemcalls.c)\
[read\(\) - xnu/bsd/kern/sys_generic.c](https://github.com/apple-oss-distributions/xnu/blob/main/bsd/kern/sys_generic.c)

- TSD: Thread Specific Data
- FLEH: First Level Exception Handler
- SLEH: Second Level Exception Handler

System call trap is triggered with syscall instruction and trap handler uses system call number stored in `rax` that determines system call to be executed. 
<br/><br/>
#### 5. read

Function signature: `ssize_t read(int fd, void* buf, size_t nbyte);`
	returns number of bytes written to buffer, or -1 if an error occurs and global variable `errno` that represents error number is set.

NASM 'rel' keyword and position independent code
###### `errno` definition in `sys/errno.h`
```
extern int * __error(void);
#define errno (*__error())
```

###### `___error`
```
___error:
    1bf0:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
	; mrs: Move to Register from Special register
	; TPIDR_EL0 register contains pointer to thread-local storage
    1bf4:	08 05 40 f9	ldr	x8, [x8, #8]
	; load thread-local variable
    1bf8:	09 02 00 f0	adrp	x9, 67 ; 0x44000
	; set x9 to address(0x44000) of page the label belongs to
    1bfc:	29 01 02 91	add	x9, x9, #128
    1c00:	1f 01 00 f1	cmp	x8, #0
    1c04:	20 01 88 9a	csel	x0, x9, x8, eq
	; csel: Conditional Select
	; x0 = eq ? x9 : x8
    1c08:	c0 03 5f d6	ret
```
[Thread Local Storage](https://fuchsia.dev/fuchsia-src/development/kernel/threads/tls)

According to [syscall functions in xnu/bsd/dev/i386/systemcalls.c](https://github.com/apple-oss-distributions/xnu/blob/main/bsd/dev/i386/systemcalls.c), carry bit in FLAGS register is set if an error has occurred during system call.
Check carry bit to decide whether return the number of byte read or set errno and return -1.

[Linux kernel x86_64 system call table - linux/arch/x86/entry/syscalls/syscall_64.tbl](https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl)
Linux x86_64 system call return value is stored at `rax`. If it has negative value, it is system call error and equals to `-errno`.
<br/><br/>
#### 6. write


## Phase 3: Implement Complex Functions

#### 1. atoi_base
Function signature: `int atoi_base(char* str, char* base);`
	convert `str` to integer using `base` representing base of n-decimal number.
	With base = "01", str will be interpreted as binary.
	With base = "0123456789abcdef", str will be interpreted as hexadecimal number.

##### Use registers to minimize stack usage
Many registers and function calls are required to implement complex logic. In this case, caller-saved registers need to be stored to the stack frequently.
To avoid this, It should use callee-saved registers for persistent variables such as count, sum, etc.
```
push rbp
mov  rbp, rsp

sub  rsp, 8
mov  [rsp], rbx
xor  rbx, rbx ; use rbx to store count

...

mov  rax, rbx ; return count
mov  rbx, [rsp]
mov  rsp, rbp
pop  rbp
ret
```

##### `is_space` optimization
minimize usage of `cmp` and jump instructions.
```
// is_space.c
int is_space(char c)
{
  return (c >= 9 && c <= 13 || c == 32);
}

// is_space.s
...
mov rax, 1           ; a = 1;
shr rax, rdx         ; a <<= c;
mov rdx, 0x100000000 ; d = (1 << 32) | (0b11111 << 9);
and rax, rdx         ; a = d & c;
...
```
#### 2. list_sort
Function signature: `void list_sort(t_list** head, int (*cmp)(void*, void*));`
	sort linked list


### Issues
##### LLDB instruction error
- instruction step over failed (Could not create return address breakpoint. Return address did not point to executable memory).

#### Linux (ELF64) linking error
- executable stack
	[Gentoo Wiki - GNU stack](https://wiki.gentoo.org/wiki/Hardened/GNU_stack_quickstart)
	[Stack overflow post](https://stackoverflow.com/a/76768457)
- PLT (Procedure Linkage Table) for PIC
- [NASM - ELF](https://www.nasm.us/doc/nasmdoc8.html#section-8.9)
#### macOS (macho64) assemble warning
A warning occurs when `-Wall` option is applied:
`warning: 32-bit relative section-crossing relocation [-w+reloc-rel-dword]`
while NASM assembles files that calls external functions such as malloc, free, \_\_\_errno.
- [NASM appendix A](https://www.nasm.us/xdoc/2.16.03/html/nasmdoca.html)
	Relative relocation that could not be resolved at *assembly time* was generated in the output format.

#### PIC (Position Independent Code)
- [Wikipedia - Relocation](https://en.wikipedia.org/wiki/Relocation_(computing))
- [Wikipedia - PIC](https://en.wikipedia.org/wiki/Position-independent_code)
- [Wikipedia - ASLR](https://en.wikipedia.org/wiki/Address_space_layout_randomization)
- [Apple Documentation - PIC](https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/MachOTopics/1-Articles/dynamic_code.html#//apple_ref/doc/uid/TP40002528-SW1)

#### Inapplicable Optimization Option
- Optimization is necessary to compile linked list merge sort written in C and compare it with assembly version.
- But list_sort does not work if optimization option `-O1` or higher is applied.
- Found a bug that `rax` was placed where `eax` must be.
