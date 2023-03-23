# -------------------------------------------------------------------
# [Computer Architecture] Skeleton code for the 1st project (calculator)
# -------------------------------------------------------------------

.text	
# main
main:
	
	#jal x1, test #uncomment for the functionality test!!
	
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
#x11(a1): arithmetic operation (0: addition, 1:  subtraction, 2:  multiplication, 3: division)
#x12(a2): the first operand
#x13(a3): the second operand
#x10(a0): return value
#x14(a4): return value (remainder for division operation)
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
	addi	x2, x2, -8
	sd		x1,	0(x2)

	beq		x10, 0, add
	beq		x10, 1, sub

	addi	x6, x13, 0
	addi	x7, x0, 33
	beq		x10, 2, mul
	beq		x10, 3, div

add:
	add		x10, x12, x13
	jalr	x0, 0(x1)

sub:
	sub		x10, x12, x13 
	jalr	x0, 0(x1)

mul:
	# x12: multiplicand
	# x13: multiplier
	# x10: product
	# x6: initially equals to multiplier. product is added at [63,32] and sll x6, 1 per cycle
	# x7: initially 32 and decrement until 0 to break loop
	# x18: stores LSB of x6
	beq		x7, 0, exit
	sub		x7, x7, 1
	andi	x18, x6, 1
	sll		x6, x6, 1
	beq		x18, 0, mul

div:

exit:
        #--------------------------------------------------------------------
	jalr x0, 0(x1)


.include "common.asm"
