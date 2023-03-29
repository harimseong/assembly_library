#include <unistd.h>
#include <stdio.h>

unsigned int	calc(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int* a4);
unsigned int	add(unsigned int l, unsigned int r);
unsigned int	sub(unsigned int l, unsigned int r);
unsigned int	mul(unsigned int l, unsigned int r);
unsigned int	div(unsigned int l, unsigned int r);

int	main()
{
	unsigned int	a0;
	unsigned int	a1 = 2;
	unsigned int	a2 = 0x2;
	unsigned int	a3 = 0xffffffff;
	unsigned int	a4;

	fscanf(stdin, "%u %u %u", &a1, &a2, &a3);
	a0 = calc(a1, a2, a3, &a4);
	switch (a1)
	{
		case 0:
			fprintf(stdout, "%x + %x = %x, %x. EQ=%d\n", a2, a3, a0, a2 + a3, a0 == a2 + a3);
			break;
		case 1:
			fprintf(stdout, "%x - %x = %x, %x. EQ=%d\n", a2, a3, a0, a2 - a3, a0 == a2 - a3);
			break;
		case 2:
			fprintf(stdout, "%x * %x = %x, %x. EQ=%d\n", a2, a3, a0, a2 * a3, a0 == a2 * a3);
			break;
		case 3:
			fprintf(stdout, "%x / %x = %x, %x, %x %% %x = %x, %x, EQ=%d\n",
				a2, a3, a0, a2 / a3, a2, a3, a4, a2 % a3, (a2 / a3 == a0) && (a2 % a3 == a4));
			break;
		default:
			break;
	}
}

unsigned int	calc(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int* a4)
{
	unsigned int	a0;
	// 0: addition, 1: subtraction, 2: multiplication, 3:division
	
	switch (a1)
	{
		case 0:
			a0 = add(a2, a3);
			break;
		case 1:
			a0 = sub(a2, a3);
			break;
		case 2:
			a0 = mul(a2, a3);
			break;
		case 3:
			a0 = div(a2, a3);
			break;
		default:
			break;
	};
	return a0;
}

unsigned int	add(unsigned int l, unsigned int r)
{
	return l + r;
}

unsigned int	sub(unsigned int l, unsigned int r)
{
	return l - r;
}
/*
	[multiplicand(l)]
	
	[	ALU		]

t1	[	product	| multiplier(r) ]

ex)
	0100 0000
*	0000 0000 0000 0001
*	0100 0000 
*/
unsigned int	mul(unsigned int l, unsigned int r)
{
	unsigned long long int	t1 = r;
	unsigned long long int	t2 = (unsigned long long int)l << 32;
	int	count = 0;

	while (count < 32)
	{
		if (t1 & 1)
			t1 += t2;
		t1 >>= 1;
		++count;
	}
	return t1 & 0xffffffff;
}

unsigned int	div(unsigned int l, unsigned int r)
{
	unsigned long long int	t1 = l;
	return 0;
}
