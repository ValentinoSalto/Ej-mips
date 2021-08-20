.data                               #Escribir un programa que acepte tres números enteros e imprima "iguales" si los tres números son iguales o "no iguales" de lo contrario.

mensaje: .asciiz "ingrese numero\n" 


iguales: .asciiz "son iguales\n"

noiguales: .asciiz "no son iguales\n"

.text

.globl main

main:

    li $v0, 4
    la $a0, mensaje     

    syscall

    li $v0, 5

    syscall

   move $t1, $v0


    li $v0, 4
    la $a0, mensaje     

    syscall
    
    li $v0, 5

    syscall

    move $t2, $v0

    li $v0, 4
    la $a0, mensaje     

    syscall
    
    li $v0, 5

    syscall

    move $t3, $v0


    bne $t1, $t2, mensajenoiguales   

    bne $t3, $t2, mensajenoiguales


    li  $v0, 4

    la $a0, iguales 

    syscall

    j exit

mensajenoiguales:

  li $v0, 4
  la $a0, noiguales     

    syscall

exit:
li $v0, 10
  syscall