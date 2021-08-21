.data 
mensaje: .asciiz "Ingrese un año:\n"
bisiesto: .asciiz "es bisiesto\n"
nobisiesto: .asciiz "no es bisiesto\n"
.text 

.globl main
main:

    li $v0, 4
    la $a0, mensaje
    syscall

    li $v0, 5
    syscall

    move $s0, $v0 


    rem $s1, $s0, 4 
    bne $s1, $zero, false

    true:
    li $v0, 4 
    la $a0, bisiesto
    syscall

    j exit 

    false:
    li $v0,4
    la $a0, nobisiesto
    syscall




    exit: 

    li $v0, 10
    syscall