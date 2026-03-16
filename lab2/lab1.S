.syntax unified
.cpu cortex-m4
.thumb

.global lab1
.type lab1, %function

#define A 10
#define B 6
#define C 3

lab1:

    push {lr}

    mov r0, #A      // a
    mov r1, #B      // b
    mov r2, #C      // c

    sub r3, r0, r1  // r3 = a - b

    mov r4, #3
    mul r3, r3, r4  // r3 = (a-b)*3

    mov r5, #1
    lsl r5, r5, r2  // r5 = 2^c

    add r0, r3, r5  // результат

    pop {pc}

.size lab1, .-lab1
