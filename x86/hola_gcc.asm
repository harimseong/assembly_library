; ----------------------------------------------------------------------------------------
; Writes "Hola, mundo" to the console using a C library. Runs on Linux.
;
;	 nasm -felf64 hola.asm && gcc hola.o && ./a.out
; ----------------------------------------------------------------------------------------

		global	main
		extern	puts

		section   .text
main:									   ; This is called by the C library startup code
		mov		rax, 1
		mov		rdi, 1
		mov		rsi, message
		mov		rdx, 13
		syscall
		mov		rdi, message			; First integer (or pointer) argument in rdi
		call	puts					; puts(message)
		ret							   ; Return from main back into C library wrapper

message:
		db		"Hola, mundo", 10, 0		; Note strings must be terminated with 0 in C

;https://cs.lmu.edu/~ray/notes/nasmtutorial/
