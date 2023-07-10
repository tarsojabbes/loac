addi x10 x0 1
add x11 x10 x10
addi x12 x0 5
beq x12 x10 16
slli x11 x11 1
addi x10 x10 1
jal x0 -12
add x0 x0 0