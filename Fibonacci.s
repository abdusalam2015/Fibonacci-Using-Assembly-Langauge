.data
.text
.globl main
.ent main
main: 
# cin word 
	li $v0,5
	syscall
	move $t1,$v0

add $s0,$0,$0
add $s1,$0,1
WHILE:
	add $t0,$s0,$s1
	beq $t1,$0,END
	add $s1,$s0,$0
	add $s0,$t0,$0	
	sub $t1,$t1,1
	j WHILE
END:
	li $v0,1
	move $a0,$t0
	syscall
	li $v0,10
	syscall
.end main