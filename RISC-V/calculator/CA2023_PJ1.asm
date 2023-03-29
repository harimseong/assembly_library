# -------------------------------------------------------------------
# [Computer Architecture] Skeleton code for the 1st project (calculator)
# -------------------------------------------------------------------

.text	
# main
main:
	
	jal x1, test #uncomment for the functionality test!!

#	lui	t0, 0x1
#	addi	t0, t0, 0x7b
#	addi	t1, t0, 0
#	addi	x11, x0, 3
#	lui	t0, 0x8
#	addi	t0, t0, 0xae
#	addi	t1, x0, 0x84
#	add		x12, x0, t0
#	add		x13, x0, t1
#	addi	x11, x0, 3
#	jal 	x1, calc
	
	#----TODO-------------------------------------------------------------
	#1. read a string from the console
	#2. perform arithmetic operations by invoking calc()
	#3. print a string to the console to show the computation result
	#----------------------------------------------------------------------
	
	# Exit (93) with code 0
        li a0, 0
        li a7, 93
        ecall
        ebreak


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
