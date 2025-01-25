[org 0x7c00]		; Assembly command
					; Let NASM compiler know starting address of memory
					; BIOS reads 1st sector and copied it on memory address 0x7c00
[bits 16] 			; Assembly command
					; Let NASM compiler know that this code consists of 16its

[SECTION .text] 	; Text section

START:				; Boot loader(1st sector) starts
    cli				; Clear interrupt
    xor ax, ax		; Initialize ax register
	mov ax, 0x8FF
	mov ds, ax		; Set data segment register
	mov bx, 0x00
	mov al, 0x01

;-----------Following code is for filling some values in the memory-------------;

mem:																		
	mov byte [ds:bx], al
	cmp bx, 0xFF
	je test_end
	jmp re

re:
	add al, 0x02
	add bx, 0x01
	jmp mem
	
test_end:
	cli

	xor ax, ax
	mov ds, ax
    mov ax, 0xB800
    mov es, ax 

	
;-------------------------------------------------------------------------------;

	sti						; Set interrupt
	
    call load_sectors 		; Load rest sectors
    jmp sector_2

load_sectors:			 	; Read and copy the rest sectors of disk

   	push es
    xor ax, ax
    mov es, ax									; es=0x0000
 	mov bx, sector_2 							; es:bx, Buffer Address Pointer
    mov ah,2 									; Read Sector Mode
    mov al,(sector_end - sector_2)/512 + 1  	; Sectors to Read Count
    mov ch,0 									; Cylinder Number=0
    mov cl,2 									; Sector Number=2
    mov dh,0 									; Head=0
    mov dl,0 									; Drive=0, A:drive
	int 0x13 									; BIOS interrupt
												; Services depend on ah value
    pop es
    ret

times   510-($-$$) db 0 		; $ : current address, $$ : start address of SECTION
								; $-$$ means the size of source
dw      0xAA55 					; signature bytes
								; End of Master Boot Record(1st Sector)
								
		

sector_2:						; Program Starts
	mov ax, 0x8FF
	mov ss, ax
	mov sp, 0x10
	mov ax, 0x1234
	push ax
	mov bx, 0x8FFC
	mov dl, byte [ds:bx]
	add ah, dl
	xchg al, bh
	mov bx, 0x8FFD
	mov word[ds:bx], ax
	sub al, ah
	mov bx, 0x8FFF
	mov byte[ds:bx], al

	
;-------------------------Write your code here----------------------------------;	
; Print your Name in VMware screen											    ;
; Print your ID in VMware screen											    ;
; Print the value(word size) in the Stack Pointer after executing the above code;
;																				;
;																				;
;																				;
;																				;
;																				;
;																				;
;-------------------------------------------------------------------------------;

print_info:
;	static uint16_t	g_pos = 0;
	mov		bx, WORD [DISPLAY_OFFSET]
	mov		WORD [ds:bx], 0

	call	flush_display
	call	newline_display

	mov		ax, 0
	mov		al, BYTE [COLOR_BLACK]
	shl		al, 4
	or		al, BYTE [COLOR_RED]
	push	ax
	push	0xF
	push	ID
	call	write_display
	add		sp, 6
	call	newline_display

	mov		ax, 0
	mov		al, BYTE [COLOR_BLACK]
	shl		al, 4
	or		al, BYTE [COLOR_YELLOW]
	push	ax
	push	WORD 0x12
	push	NAMEE
	call	write_display
	add		sp, 6
	call	newline_display

	mov		ax, 0
	mov		al, BYTE [COLOR_BLACK]
	shl		al, 4
	or		al, BYTE [COLOR_SKY]
	push	ax
	push	WORD 0x26
	push	Answer
	call	write_display
	add		sp, 4

	push	WORD 0x4
	push	STATIC_ARRAY
	push	sp
	call	htoa
	add		sp, 6

	push	WORD 0x4
	push	STATIC_ARRAY
	call	write_display
	add		sp, 6
	call	newline_display

	add		sp, 4
	jmp sector_end

;void	write_display(uint8_t* str, uint16_t len, uint8_t color)
;@brief	display characters on terminal
;@param	str address of first character of the string.
;@param	len length of the string.
;@param	color color of characters[3:0] and background[7:4].
write_display:
	push	bp
	push	bx
	mov		bp,	sp

	mov		si, WORD [bp + 6]

	mov		cx, WORD [bp + 8]
	mov		bx, WORD [DISPLAY_OFFSET]
	mov		ax, [ds:bx]
	mov		di,	ax
;	if (g_pos + len >= VMEM_SIZE)
;		return;
	add		ax, cx
	cmp		ax, WORD [VMEM_SIZE]
	jg		write_display_exit

	mov		ax, cx
	shl		ax, 1
	add		[ds:bx], ax
	mov		dh, BYTE [bp + 10]

write_display_loop:
	cmp		cx, 0
	jle		write_display_exit

	mov		dl, BYTE [si]
	mov		WORD [es:di], dx

	add		di, 2
	add		si, 1
	sub		cx, 1
	jmp		write_display_loop

write_display_exit:
	mov		sp, bp
	pop		bx
	pop		bp
	ret

newline_display:
	push	bp
	push	bx
	mov		bp, sp

	mov		bx, WORD [DISPLAY_OFFSET]
	mov		ax, [ds:bx]
	mov		dx, 0
	mov		cx, 0xA0
	div		cx
	add		ax, 1
	mul		cx
	mov		[ds:bx], ax

	mov		sp, bp
	pop		bx
	pop		bp
	ret

flush_display:
	push	bp
	push	bx
	mov		bp, sp

	mov		bx, WORD [DISPLAY_OFFSET]
	mov		WORD [ds:bx], 0
	mov		bx, 0
	mov		dx,	WORD [VMEM_SIZE]

flush_display_loop:
	cmp		bx, dx
	jge		flush_display_exit
	mov		WORD [es:bx], 0
	add		bx, 2
	jmp		flush_display_loop
	
flush_display_exit:
	mov		sp, bp
	pop		bx
	pop		bp
	ret

;void	htoa(uint16_t hex, char* str, uint16_t len)
;@brief	convert hex to ascii string.
;@param	hex	input hexadecimal number
;@param str	output buffer containing string
;@param	len	number of hexadecimal numbers to be converted
htoa:
	push	bp
	push	bx
	mov		bp, sp

	mov		ax, [bp + 6]
	mov		di, [bp + 8]
	mov		dx, [bp + 10]
	mov		si, HEX_ASCII
	mov		cx, 0
	add		di,	dx
	sub		di, 1
	
htoa_loop:
	cmp		cx, dx
	jge		htoa_exit

	mov		bx, ax
	and		bx, 0x000F

	mov		bl, BYTE [si + bx]
	mov		BYTE [di], bl

	push	WORD cx
	push	WORD [di]
	call	debug
	add		sp, 4

	shr		ax, 4
	sub		di, 1
	add		cx, 1
	jmp		htoa_loop

htoa_exit:
	mov		sp, bp
	pop		bx
	pop		bp
	ret

;void	debug(char byte, uint16_t pos)
;@brief	display a byte to specific position on terminal
debug:
	push	bp
	push	ax
	push	bx
	mov		bp, sp

	mov		al, BYTE [bp + 8]
	mov		bx, WORD [bp + 10]
	shl		bx, 1
	mov		ah, BYTE [COLOR_SKY]
	shl		ah, 4
	or		ah, BYTE [COLOR_PURPLE]
	mov		WORD [es:bx], ax

	mov		sp, bp
	pop		bx
	pop		ax
	pop		bp
	ret

STATIC_ARRAY	db	0, 0, 0, 0, 0, 0, 0, 0
HEX_ASCII		db	'0123456789ABCDEF', 0
DISPLAY_OFFSET	dw	0x9010
VMEM_SIZE		dw	0x400
COLOR_BLACK		db	0x0
COLOR_BLUE		db	0x1
COLOR_GREEN		db	0x2
COLOR_SKY		db	0x3
COLOR_RED		db	0x4
COLOR_PURPLE	db	0x5
COLOR_BROWN		db	0x6
COLOR_LGREY		db	0x7
COLOR_GREY		db	0x8
COLOR_LBLUE		db	0x9
COLOR_LGREEN	db	0xA
COLOR_CYAN		db	0xB
COLOR_ORANGE	db	0xC
COLOR_MAGENTA	db	0xD
COLOR_YELLOW	db	0xE
COLOR_WHITE		db	0xF

;---------------------- Write your Name and ID here-----------------------------;

ID  		db 'ID : 2014311744', 0
NAMEE 		db 'NAME : Seong Harim', 0
Answer 		db 'A value in Stack Pointer(word size) : ', 0

;-------------------------------------------------------------------------------;
	
sector_end:

