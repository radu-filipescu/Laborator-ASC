.data
x: .long 16
y: .long 5
sum: .space 4
dif: .space 4
prod: .space 4
cat: .space 4
rest: .space 4

.text

.globl _start

_start:
	# sum = x + y
	mov x, %eax
	add y, %eax
	mov %eax, sum

	# dif = x - y 
	mov x, %eax
	sub y, %eax
	mov %eax, dif
	
	# prod = x * y
	mov x, %eax
	mov y, %ebx
	imul %ebx
	mov %eax, prod

	# cat = x div y,  rest = x % y
	mov x, %eax
	mov y, %ebx
	idiv %ebx
	mov %eax, cat
	mov %edx, rest

	# return 0 
	mov $1, %eax
	mov $0, %ebx
	int $128

