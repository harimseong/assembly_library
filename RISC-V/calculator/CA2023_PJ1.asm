# -------------------------------------------------------------------
# [Computer Architecture] Skeleton code for the 1st project (calculator)
# -------------------------------------------------------------------

.text	
# main
main:
#	jal x1, test #uncomment for the functionality test!!

	#----TODO-------------------------------------------------------------
	#1. read a string from the console
	#2. perform arithmetic operations by invoking calc()
	#3. print a string to the console to show the computation result
	#----------------------------------------------------------------------

	jal	x1, read_expr
	
main_exit:
# Exit (93) with code 0
	li a0, 0
	li a7, 93
	ecall
	ebreak


read_expr:
	addi sp, sp, -8
	sd	ra, 0(sp)
	addi sp, sp, -24 # space for string buffer

	add	a0, sp, x0
	add	s1, a0, x0
	li	a1, 22
	li	a7, 8
	ecall

	add	a1, s1, x0 # a1 = address of buffer
	jal	ra, read_int
	add	s2, a0,	x0

	# a1 = address of buffer after end of first operand
	jal	ra, read_op
	add	s3, a0,	x0

	# a1 = address of buffer after operator
	jal	ra, read_int
	add	s4, a0,	x0
	
	add a1, s3, x0
	add a2, s2, x0
	add a3, s4, x0
	add	a4, x0, x0
	jal	ra, calc
	
	li	a7, 1
	ecall

	beq	a4, x0, read_expr_exit
	addi a0, x0, 0x20
	li	a7, 11
	ecall
	add	a0, a4, x0
	li	a7, 1
	ecall

read_expr_exit:
	addi sp, sp, 24
	ld	ra, 0(sp)
	addi sp, sp, 8
	jalr x0, 0(ra)

read_int:
	addi sp, sp, -32
	sd	ra, 0(sp)
	sd	s1, 8(sp)
	sd	s2, 16(sp)
	sd	s3, 24(sp)
	add	a0, x0, x0
	add	s1, a1, x0
	addi s2, x0, 0x39
	addi s3, x0, 0x30

read_int_loop:
	lb	t3, 0(s1)
	bgt	t3, s2, read_int_exit
	blt	t3, s3, read_int_exit
	
	addi a1, x0, 2
	add	a2, a0, x0
	addi a3, x0, 10

	jal	ra, calc

	addi t3, t3, -48
	add	a0, a0, t3
	addi s1, s1, 1
	beq x0, x0 read_int_loop


read_int_exit:
	add a1, s1, x0
	ld	ra, 0(sp)
	ld	s1, 8(sp)
	ld	s2, 16(sp)
	ld	s3, 24(sp)
	addi sp, sp, 32
	jalr x0, 0(ra)

read_op:
	lb	t1, 0(a1)
	addi a1, a1, 1
	addi t2, x0, 43 # '+'
	addi t3, x0, 45 # '-'
	addi t4, x0, 42 # '*'
	addi t5, x0, 47 # '/'

	beq	t1, t2, read_op_add
	beq	t1, t3, read_op_sub
	beq	t1, t4, read_op_mul
	beq	t1, t5, read_op_div

	li	a7, 93
	addi a0, x0, 1
	ecall

read_op_add:
	addi a0, x0, 0
	jalr x0, 0(ra)

read_op_sub:
	addi a0, x0, 1
	jalr x0, 0(ra)

read_op_mul:
	addi a0, x0, 2
	jalr x0, 0(ra)
read_op_div:
	addi a0, x0, 3
	jalr x0, 0(ra)

#----------------------------------
#name: calc
#func: performs arithmetic operation
#x10(a0): return value
#x11(a1): arithmetic operation (0: f_add, 1:  f_sub, 2:  f_mul, 3: f_div)
#x12(a2): the first operand
#x13(a3): the second operand
#x14(a4): return value (remainder for f_div operation)
#----------------------------------
calc:
# registers	ABIname	Description							Saver
# x0		zero	hard-wired zero						--
# x1		ra 		return address						caller
# x2		sp		stack pointer						--
# x3		gp		global pointer						--
# x4		tp		thread pointer						--
# x5		t0	 	temporary/alternate link register	caller
# x6-7		t1-2	temporaries							caller
# x8		s0/fp	saved register/frame pointer		callee
# x9		s1		saved registers						callee
# x10-11	a0-1	function arguments/return value		caller
# x12-17	a2-a7	function arguments					caller
# x18-27	s2-11	saved registers						callee
# x28-31	t3-6	temporaries							caller

# caller-save registers
# return address, arguments, 
	
        #---TODO-------------------------------------------------------------
	addi	x5, x0, 0
	beq		x11, x5, f_add
	addi	x5, x5, 1
	beq		x11, x5, f_sub

	addi	x5, x5, 1
	beq		x11, x5, f_mul
	addi	x5, x5, 1
	beq		x11, x5, f_div

f_add:
	add		x10, x12, x13
	jalr	x0, 0(x1)

f_sub:
	sub		x10, x12, x13 
	jalr	x0, 0(x1)

f_mul:
	# x12(a2):	multiplicand
	# x13(a3):	multiplier
	# x10(a0):	product (initially multiplier)
	# x5(t0):	initially 32. decrement until 0
	# x6(t2):	saves shifted multiplicand
	# x7(t1):	bit representing LSB of product register
	addi	x10, x13, 0
	addi	x5, x0, 32
	addi	x6, x12, 0
	slli	x6, x6, 32
f_mul_l0:
	andi	x7, x10, 1
	beq		x7, x0, f_mul_l1
	add		x10, x10, x6
f_mul_l1:
	srli	x10, x10, 1
	addi	x5, x5, -1
	beq		x5, x0, exit
	jal		x0, f_mul_l0

f_div:
	# x12(a2):	dividend
	# x13(a3):	divisor
	# x14(a4):	remainder, initially dividend
	# x10(a0):	quotient
	# x5(t0):	initially 32. decrement until 0
	addi	x10, x0, 0
	slli	x13, x13, 32
	addi	x14, x12, 0
	addi	x5, x0, 32
f_div_l0:
	srli	x13, x13, 1
	blt		x14, x13, f_div_l1
	addi	x10, x10, 1
	sub		x14, x14, x13
f_div_l1:
	addi	x5, x5, -1
	beq		x5, x0, exit
	slli	x10, x10, 1
	jal		x0, f_div_l0

exit:

        #--------------------------------------------------------------------
	jalr x0, 0(x1)

.include "common.asm"
