print_format:
.string "%d\n"
array:
.long 112, 113, 115, 64, 64, 64, 64 
array_end:
.text
.global main
.type main, @function

main:
movl $0, %ecx
movl $array,%ebx
movl (%ebx), %eax
jmp ch_bound
loop_start:
and $64, %eax
cmpl $64, %eax
jne less
shrl $1, (%ebx)
add (%ebx), %ecx
less:
addb $4, %al
movl (%ebx), %eax
ch_bound:
cmpl $array_end, %ebx
jne loop_start
pushl %ecx
pushl $print_format
call printf
addb $8, %al
movl $0, %ecx
movl $0, %ebx
movl $0, %eax
