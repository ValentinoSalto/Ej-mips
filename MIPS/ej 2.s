.data                 # Que acepte números ingresados por el usuario hasta que el usuario ingrese el número cero. La salida del programa es la suma de todos         los números ingresados.

mensaje:  .asciiz "Ingrese un numero \n"
sumatotal: .asciiz "El total es\n"
promedio:   .asciiz "El promedio es\n"

.text
.globl main 
main:


    loop: 

    li $v0, 4
    la $a0, mensaje     

    syscall


    li $v0, 5

    syscall

    move $t0, $v0

    beq $v0, $zero, exit

    add $t1, $t0, $t1

    add  $t2, $t2, 1



    j loop




    exit:
    li $v0, 4
    la $a0, sumatotal   

    syscall
    move $a0, $t1

    li $v0, 1 

    syscall




    div $t3, $t1, $t2    


    li $v0, 4
    la $a0, promedio   


    syscall

    move $a0, $t3

    li $v0, 1 

    syscall



    li $v0, 10

    syscall