// Prompt user to input first number
mov r0, #1
ldr r1, =msg1
mov r2, #msg1_len
mov r7, #4
svc #0

// Read first number from user
mov r0, #0
ldr r1, =num1
mov r2, #1
mov r7, #3
svc #0

// Prompt user to input second number
mov r0, #1
ldr r1, =msg2
mov r2, #msg2_len
mov r7, #4
svc #0

// Read second number from user
mov r0, #0
ldr r1, =num2
mov r2, #1
mov r7, #3
svc #0

// Add the two numbers together
ldr r1, =num1
ldr r2, =num2
ldrb r1, [r1]
ldrb r2, [r2]
add r3, r1, r2

// Convert the result to a string
mov r0, #0
mov r1, #10
bl itoa

// Display the result to the user
mov r0, #1
ldr r1, =result
ldr r2, =result_len
mov r7, #4
svc #0

// Exit program
mov r0, #0
mov r7, #1
svc #0

// Data section
msg1: .ascii "Enter first number: "
msg1_len: .word 20
msg2: .ascii "Enter second number: "
msg2_len: .word 21
num1: .byte 0
num2: .byte 0
result: .space 11
result_len: .word 11
