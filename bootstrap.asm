global _main
section .text

_main:
mov [rel org_rsp], rsp
mov [rel org_rbp], rbp
lea rax, [rel mem]
mov [rel mem_ptr], rax
lea rbp, [rel dat_stack]
lea rax, [rel loc_stack]
mov [rel loc_stack_ptr], rax
mov [rbp], rdx
add rbp, 8
mov [rbp], rdi
add rbp, 8
mov [rbp], rsi
add rbp, 8
call func_0
_exit:
mov rax, 0x2000001
mov rdi, 0
syscall


func_0:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_4
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_5
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_6
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_7
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_8
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_9
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_9
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
ret

func_6:
lea rax, [rel str_0]
mov [rbp], rax
add rbp, 8
ret

func_10:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_12:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_10
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_0_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_13
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_0_1:
end_0:
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_6
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_1_1
ret
block_1_1:
end_1:
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_6
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_15
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_16:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_1]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 10
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_17
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_18:
mov rax, 4
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_19
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_20:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_21
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_22:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_24:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_21
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_25:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_26:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_21
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_27:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_28:
lea rax, [rel str_2]
mov [rbp], rax
add rbp, 8
ret

func_29:
lea rax, [rel str_3]
mov [rbp], rax
add rbp, 8
ret

func_30:
lea rax, [rel str_4]
mov [rbp], rax
add rbp, 8
ret

func_31:
lea rax, [rel str_5]
mov [rbp], rax
add rbp, 8
ret

func_32:
lea rax, [rel str_6]
mov [rbp], rax
add rbp, 8
ret

func_33:
mov rax, 1
mov [rbp], rax
add rbp, 8
ret

func_34:
mov rax, 2
mov [rbp], rax
add rbp, 8
ret

func_35:
mov rax, 3
mov [rbp], rax
add rbp, 8
ret

func_36:
mov rax, 4
mov [rbp], rax
add rbp, 8
ret

func_37:
mov rax, 5
mov [rbp], rax
add rbp, 8
ret

func_38:
mov rax, 6
mov [rbp], rax
add rbp, 8
ret

func_39:
mov rax, 1001
mov [rbp], rax
add rbp, 8
ret

func_40:
mov rax, 1002
mov [rbp], rax
add rbp, 8
ret

func_41:
mov rax, 1003
mov [rbp], rax
add rbp, 8
ret

func_42:
mov rax, 1004
mov [rbp], rax
add rbp, 8
ret

func_43:
mov rax, 1005
mov [rbp], rax
add rbp, 8
ret

func_44:
mov rax, 1006
mov [rbp], rax
add rbp, 8
ret

func_45:
mov rax, 1007
mov [rbp], rax
add rbp, 8
ret

func_8:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_7]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
lea rax, [rel str_8]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
lea rax, [rel str_9]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
lea rax, [rel str_10]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
lea rax, [rel str_11]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 40], rax
lea rax, [rel str_12]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 48], rax
mov rax, 1024
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 56
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 56
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 56], rax
mov rax, 1024
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 64
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 64
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 64], rax
mov rax, 1024
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_47
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 72], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 80], rax
mov rax, 4096
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 88
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 88
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 88], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 96], rax
mov rax, 4096
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 104
mov [rel loc_stack_ptr], rax
call func_47
mov rax, [rel loc_stack_ptr]
sub rax, 104
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 104], rax
mov rax, 4096
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 112
mov [rel loc_stack_ptr], rax
call func_47
mov rax, [rel loc_stack_ptr]
sub rax, 112
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 112], rax
mov rax, 4096
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 120
mov [rel loc_stack_ptr], rax
call func_47
mov rax, [rel loc_stack_ptr]
sub rax, 120
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 120], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 112]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_13]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 128
mov [rel loc_stack_ptr], rax
call func_48
mov rax, [rel loc_stack_ptr]
sub rax, 128
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 128
mov [rel loc_stack_ptr], rax
call func_49
mov rax, [rel loc_stack_ptr]
sub rax, 128
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 128
mov [rel loc_stack_ptr], rax
call func_39
mov rax, [rel loc_stack_ptr]
sub rax, 128
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
mov rax, [rel loc_stack_ptr]
add rax, 136
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 136
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 136], rax
while_2:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 136]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_2
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 144
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 144
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 144
mov [rel loc_stack_ptr], rax
call func_33
mov rax, [rel loc_stack_ptr]
sub rax, 144
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
mov rax, [rel loc_stack_ptr]
add rax, 152
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 152
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 152], rax
mov rax, [rel loc_stack_ptr]
add rax, 160
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 160
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 160], rax
mov rax, [rel loc_stack_ptr]
add rax, 168
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 168
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 168], rax
mov rax, [rel loc_stack_ptr]
add rax, 176
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 176
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 176], rax
while_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 176]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 184
mov [rel loc_stack_ptr], rax
call func_52
mov rax, [rel loc_stack_ptr]
sub rax, 184
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 184], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 144]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_33
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_4_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_53
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_5_1
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_33
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_5
block_5_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_14]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_5_3
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 152], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_35
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_5
block_5_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_53
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_5_5
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 160], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_34
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_5
block_5_5:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_53
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_5_7
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 168], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_34
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_5
block_5_7:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_15]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_5_9
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_37
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_5
block_5_9:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_58
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_5_11
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 176], rax
jmp end_5
block_5_11:
lea rax, [rel str_16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
lea rax, [rel str_17]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
block_5_12:
end_5:
jmp end_4
block_4_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 144]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_34
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_4_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_53
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_6_1
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 176], rax
jmp end_6
block_6_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_53
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_6_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_34
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_6
block_6_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_58
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_6_5
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 176], rax
jmp end_6
block_6_5:
lea rax, [rel str_18]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
lea rax, [rel str_19]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
block_6_6:
end_6:
jmp end_4
block_4_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 144]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_35
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_4_5
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_53
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_7_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_35
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_7
block_7_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_20]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_7_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_36
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_7
block_7_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_21]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_7_5
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 176], rax
jmp end_7
block_7_5:
lea rax, [rel str_22]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
lea rax, [rel str_23]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
block_7_6:
end_7:
jmp end_4
block_4_5:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 144]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_36
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_4_7
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 48]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_53
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_8_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_57
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_35
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_8
block_8_1:
lea rax, [rel str_24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
lea rax, [rel str_25]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
block_8_2:
end_8:
jmp end_4
block_4_7:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 144]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_37
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_4_9
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_26]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_9_1
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_33
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 144], rax
jmp end_9
block_9_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_58
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_9_3
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 176], rax
jmp end_9
block_9_3:
block_9_4:
end_9:
jmp end_4
block_4_9:
lea rax, [rel str_27]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
block_4_10:
end_4:
jmp while_3
end_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_39
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_10_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_28]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_11_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 120]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_63
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_40
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_11
block_11_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_29]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_11_3
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_45
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_11
block_11_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_11_5
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 96]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_12_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 96]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 96], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 88]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 96]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 192
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 192
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 192], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_9
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 192]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_4
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_13_1
lea rax, [rel str_30]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 192]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
block_13_1:
end_13:
jmp end_12
block_12_1:
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 136], rax
block_12_2:
end_12:
jmp end_11
block_11_5:
lea rax, [rel str_31]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
block_11_6:
end_11:
jmp end_10
block_10_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_45
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_10_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 152]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_14_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 200
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 200
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 200], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 200]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 192], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 192]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 200]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_69
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 192]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 200]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 88]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 96]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 192]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_7
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 96]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 96], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_39
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_14
block_14_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_14_3
lea rax, [rel str_32]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
jmp end_14
block_14_3:
lea rax, [rel str_33]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
block_14_4:
end_14:
jmp end_10
block_10_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_40
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_10_5
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 160]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_15_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_70
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 112]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_48
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_71
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_41
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_15
block_15_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_15_3
lea rax, [rel str_34]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
jmp end_15
block_15_3:
lea rax, [rel str_35]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
block_15_4:
end_15:
jmp end_10
block_10_5:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_41
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_10_7
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_36]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_16_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 120]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_72
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_42
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_16
block_16_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 160]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_16_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 120]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_48
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_73
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_41
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_16
block_16_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_16_5
lea rax, [rel str_37]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
jmp end_16
block_16_5:
lea rax, [rel str_38]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
block_16_6:
end_16:
jmp end_10
block_10_7:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_42
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_10_9
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_39]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_1
mov rax, [rel loc_stack_ptr]
add rax, 208
mov [rel loc_stack_ptr], rax
call func_18
mov rax, [rel loc_stack_ptr]
sub rax, 208
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 208], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 80]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_22
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 80]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 80], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_25
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_28
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_27
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_74
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_75
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_40]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_18_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_77
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 208], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_28
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_19_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_29
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_27
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_78
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
block_19_1:
end_19:
block_18_1:
end_18:
jmp end_17
block_17_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_41]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_5
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_18
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 208], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 80]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_22
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 80]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 80], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_25
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_30
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_27
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_74
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_79
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_5:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_42]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_7
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_20_1
lea rax, [rel str_43]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
block_20_1:
end_20:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_77
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 208], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_32
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_21_1
lea rax, [rel str_44]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
block_21_1:
end_21:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_24
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_25
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_31
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_27
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_79
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_7:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_45]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_9
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_22_1
lea rax, [rel str_46]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
block_22_1:
end_22:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_77
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 208], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_30
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_31
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_23_1
lea rax, [rel str_47]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
block_23_1:
end_23:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_24
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_25
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_32
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_27
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_81
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_9:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_48]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_11
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_24_1
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_39
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_82
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_24
block_24_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_83
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 208], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_28
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_25_1
lea rax, [rel str_49]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_25
block_25_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_29
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_25_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_84
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_25
block_25_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_30
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_31
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_85
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_32
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_85
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_25_5
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_24
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_25
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_86
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_25
block_25_5:
lea rax, [rel str_50]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_26
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
block_25_6:
end_25:
block_24_2:
end_24:
jmp end_17
block_17_11:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_51]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_13
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_82
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_13:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_52]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_15
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_44
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_17
block_17_15:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_53]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_17
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_43
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_17
block_17_17:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 168]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_19
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_87
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_19:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_54]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_21
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_87
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_21:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 160]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_23
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 120]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 216
mov [rel loc_stack_ptr], rax
call func_88
mov rax, [rel loc_stack_ptr]
sub rax, 216
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 216], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 216]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_26_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 216]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_89
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
jmp end_26
block_26_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 120]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_90
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 112]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_48
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_91
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 120]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_92
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
block_26_2:
end_26:
jmp end_17
block_17_23:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 152]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_25
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 104]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 224
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 224
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 224], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 232
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 232
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 232
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 232
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 232
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 232
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 232], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 232]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_70
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 104]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 232]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_93
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 224]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_94
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_25:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_17_27
lea rax, [rel str_55]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
jmp end_17
block_17_27:
lea rax, [rel str_56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
block_17_28:
end_17:
jmp end_10
block_10_9:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_43
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_10_11
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 152]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_27_1
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_42
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
lea rax, [rel str_57]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
jmp end_27
block_27_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_27_3
lea rax, [rel str_58]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
jmp end_27
block_27_3:
lea rax, [rel str_59]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
block_27_4:
end_27:
jmp end_10
block_10_11:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_44
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_10_13
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 160]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_28_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 120]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_48
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_73
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_42
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 128], rax
jmp end_28
block_28_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_28_3
lea rax, [rel str_60]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
jmp end_28
block_28_3:
lea rax, [rel str_61]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
block_28_4:
end_28:
jmp end_10
block_10_13:
lea rax, [rel str_62]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
block_10_14:
end_10:
jmp while_2
end_2:
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_95
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
mov rax, 4096
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 240
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 240
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 240], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 224], rax
while_29:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 104]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 248
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 248
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 224]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 248
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 248
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_29
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 104]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 224]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 248
mov [rel loc_stack_ptr], rax
call func_96
mov rax, [rel loc_stack_ptr]
sub rax, 248
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 240]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 248
mov [rel loc_stack_ptr], rax
call func_97
mov rax, [rel loc_stack_ptr]
sub rax, 248
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 224]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 240]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 248
mov [rel loc_stack_ptr], rax
call func_98
mov rax, [rel loc_stack_ptr]
sub rax, 248
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 224]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 248
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 248
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 224], rax
jmp while_29
end_29:
mov rax, [rel loc_stack_ptr]
add rax, 248
mov [rel loc_stack_ptr], rax
call func_99
mov rax, [rel loc_stack_ptr]
sub rax, 248
mov [rel loc_stack_ptr], rax
ret

func_97:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
while_30:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_30
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_63]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_31_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
jmp end_31
block_31_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_64]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_31_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_65]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_32_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_66]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
jmp end_32
block_32_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_67]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_32_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_68]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
jmp end_32
block_32_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_69]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_32_5
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_70]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
jmp end_32
block_32_5:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_71]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_32_7
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
jmp end_32
block_32_7:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_73]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_32_9
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 32
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
jmp end_32
block_32_9:
lea rax, [rel str_74]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_32_10:
end_32:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
jmp end_31
block_31_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
block_31_4:
end_31:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp while_30
end_30:
ret

func_100:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_101:
mov rax, 8
mov [rbp], rax
add rbp, 8
ret

func_102:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_75]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_76]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_77]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_101
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_78]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_103:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_79]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_101
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_80]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_81]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_82]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_49:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_83]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_84]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_85]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_86]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_87]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_88]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_89]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_90]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_91]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_92]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_102
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_93]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_102
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_94]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_102
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_91
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_95]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_96]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_97]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_98]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_99]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_95:
lea rax, [rel str_100]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_101]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_102]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_99:
lea rax, [rel str_103]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_104]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_105]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_106]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_107]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_108]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_109]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_110]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_111]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_112]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_113]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_114]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_115]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_116]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_117]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_118]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_119]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
lea rax, [rel str_120]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_71:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_121]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_122]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_123]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_73:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_33_1
lea rax, [rel str_124]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_33_1:
end_33:
lea rax, [rel str_125]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_103
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_126]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_127]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_101
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_128]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_89:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_34_1
lea rax, [rel str_129]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_34_1:
end_34:
lea rax, [rel str_130]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_131]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_101
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_132]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_133]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_102
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_90:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_35_1
lea rax, [rel str_134]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_35_1:
end_35:
lea rax, [rel str_135]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_136]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_101
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_137]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_138]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_92:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_36_1
lea rax, [rel str_139]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_36_1:
end_36:
lea rax, [rel str_140]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_141]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_101
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_142]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_143]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_87:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_37_1
lea rax, [rel str_144]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_37_1:
end_37:
lea rax, [rel str_145]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_146]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_147]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_102
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_94:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_38_1
lea rax, [rel str_148]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_38_1:
end_38:
lea rax, [rel str_149]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_150]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_151]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_102
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_98:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
lea rax, [rel str_152]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
lea rax, [rel str_153]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
while_39:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_39
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
lea rax, [rel str_154]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
jmp while_39
end_39:
lea rax, [rel str_155]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_91:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_40_1
lea rax, [rel str_156]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
block_40_1:
end_40:
lea rax, [rel str_157]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_158]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_82:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_100
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_41_1
lea rax, [rel str_159]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
block_41_1:
end_41:
lea rax, [rel str_160]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_79:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_161]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_103
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_162]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_163]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_164]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_24
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_165]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_81:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_166]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_167]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_168]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_169]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_24
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_170]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_86:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_171]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_172]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_24
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_173]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_174]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_175]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_75:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_176]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_177]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_78:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_178]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_103
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_179]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_180]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_181]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_84:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_182]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_183]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_184]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_20
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_16
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_185]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_12
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_19:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_7
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret

func_104:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_21:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_104
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_105
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_42_1
lea rax, [rel str_186]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_42_1:
end_42:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_43_1
lea rax, [rel str_187]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_43_1:
end_43:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_23:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_104
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_105
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_44_1
lea rax, [rel str_188]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
block_44_1:
end_44:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_45_1
lea rax, [rel str_189]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
block_45_1:
end_45:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_7
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
ret

func_47:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_19
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret

func_76:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_21
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_63:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_93:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_74
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_74:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_104
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_105
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_46_1
lea rax, [rel str_190]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
block_46_1:
end_46:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
ret

func_96:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_105
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_47_1
lea rax, [rel str_191]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_47_1:
end_47:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_48_1
lea rax, [rel str_192]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_48_1:
end_48:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_21
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_107:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_105
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_49_1
lea rax, [rel str_193]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
block_49_1:
end_49:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_50_1
lea rax, [rel str_194]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
block_50_1:
end_50:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
ret

func_83:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_104
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_108
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_51_1
lea rax, [rel str_195]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_51_1:
end_51:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_21
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_23
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
ret

func_77:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_104
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_108
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_52_1
lea rax, [rel str_196]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_52_1:
end_52:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_21
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
ret

func_72:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
while_53:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_53
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_96
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_96
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_107
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_107
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
jmp while_53
end_53:
ret

func_88:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
while_54:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_76
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_54
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_96
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_62
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_55_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
ret
block_55_1:
end_55:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
jmp while_54
end_54:
mov rax, -1
mov [rbp], rax
add rbp, 8
ret

func_48:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_88
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_56_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_46
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_70
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_93
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_56_1:
end_56:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_88
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_58:
mov rax, -1
mov [rbp], rax
add rbp, 8
ret

func_5:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0x242
mov [rbp], rax
add rbp, 8
mov rax, 0x1A4
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_110
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_57_1
lea rax, [rel str_197]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
block_57_1:
end_57:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret

func_4:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_110
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_58_1
lea rax, [rel str_198]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
block_58_1:
end_58:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret

func_111:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_112
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_59_1
lea rax, [rel str_199]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
block_59_1:
end_59:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret

func_113:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
ret

func_9:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_114
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_60_1
lea rax, [rel str_200]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
block_60_1:
end_60:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret

func_115:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
while_61:
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_61
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_52
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_201]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_62_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp end_62
block_62_1:
ret
block_62_2:
end_62:
jmp while_61
end_61:
ret

func_52:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_202]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_116
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_63_1
mov rax, -1
mov [rbp], rax
add rbp, 8
ret
block_63_1:
end_63:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_117:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
lea rax, [rel str_203]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_118
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
ret

func_15:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_118
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
ret

func_46:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_119
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_120
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_120:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_121
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_122
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_122
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
while_64:
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_64
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_123
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_105
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_65_1
lea rax, [rel str_204]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_59
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
block_65_1:
end_65:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_124
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_125
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 40], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_126
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_66_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_66
block_66_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 48], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 56
mov [rel loc_stack_ptr], rax
call func_128
mov rax, [rel loc_stack_ptr]
sub rax, 56
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 56
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 56
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 56], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 64
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 64
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 48]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 64
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 64
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_67_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 64], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_129
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_130
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
ret
jmp end_67
block_67_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_105
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_67_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 64], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 72
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 72
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 72], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_129
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_130
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_129
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 72]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_126
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_130
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 64]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 80
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 80
mov [rel loc_stack_ptr], rax
ret
block_67_3:
end_67:
block_66_2:
end_66:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
jmp while_64
end_64:
ret

func_131:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_126
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_130
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_132:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_121:
lea rax, [rel str_205]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_68_1
ret
block_68_1:
end_68:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_122
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_123
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_122
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_129
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_122
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_126
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_130
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_122:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_133
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_123:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_133
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, 256
mov [rbp], rax
add rbp, 8
mov rax, 256
mov [rbp], rax
add rbp, 8
mov rax, 256
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_125:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_134
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_134:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_129:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_7
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_124:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_3
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_130:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_7
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_135:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_127:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_1
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_128:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_127
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_126:
mov rax, 1
mov [rbp], rax
add rbp, 8
ret

func_119:
mov rax, 2
mov [rbp], rax
add rbp, 8
ret

func_61:
mov rax, 10000000
mov [rbp], rax
add rbp, 8
while_69:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_69
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
jmp while_69
end_69:
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_136
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_59:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, 10000000
mov [rbp], rax
add rbp, 8
while_70:
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_70
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
jmp while_70
end_70:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_137
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, 10000000
mov [rbp], rax
add rbp, 8
while_71:
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_71
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
jmp while_71
end_71:
ret

func_138:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_206]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
while_72:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, 16
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_72
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0xf
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
lea rax, [rel str_207]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 15
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 4
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_139
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
jmp while_72
end_72:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_140
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
ret

func_141:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
lea rax, [rel str_208]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_60
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 10
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_17
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_13
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_13:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_142
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_140:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_142
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_209]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_142
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_137:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_143
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_144:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_143
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
lea rax, [rel str_210]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_143
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_142:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_118
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
ret

func_143:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_118
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
ret

func_145:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_116
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_70:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
while_73:
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_73
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_74_1
ret
block_74_1:
end_74:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
jmp while_73
end_73:
ret

func_146:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_70
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_57:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_64:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
while_75:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_75
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp while_75
end_75:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret
ret

func_53:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
while_76:
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_76
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_77_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret
block_77_1:
end_77:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_78_1
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret
block_78_1:
end_78:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp while_76
end_76:
ret

func_147:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_64
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
while_79:
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_79
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_80_1
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_54
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret
block_80_1:
end_80:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_148
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_81_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret
block_81_1:
end_81:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp while_79
end_79:
ret

func_62:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_149
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_149:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
while_82:
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_82
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_83_1
mov rax, -1
mov [rbp], rax
add rbp, 8
ret
jmp end_83
block_83_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_83_3
mov rax, 1
mov [rbp], rax
add rbp, 8
ret
jmp end_83
block_83_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_84_1
mov rax, 0
mov [rbp], rax
add rbp, 8
ret
block_84_1:
end_84:
block_83_4:
end_83:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
jmp while_82
end_82:
ret

func_148:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
while_85:
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_85
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_86_1
mov rax, 0
mov [rbp], rax
add rbp, 8
ret
block_86_1:
end_86:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_87_1
mov rax, -1
mov [rbp], rax
add rbp, 8
ret
jmp end_87
block_87_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_87_3
mov rax, 1
mov [rbp], rax
add rbp, 8
ret
jmp end_87
block_87_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_88_1
mov rax, 0
mov [rbp], rax
add rbp, 8
ret
block_88_1:
end_88:
block_87_4:
end_87:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
jmp while_85
end_85:
ret

func_69:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
while_89:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_89
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp while_89
end_89:
ret

func_150:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_151
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
ret

func_152:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_151
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_90_1
lea rax, [rel str_211]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_136
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
block_90_1:
end_90:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
ret

func_151:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 16
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_85
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_91_1
lea rax, [rel str_212]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_136
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
block_91_1:
end_91:
mov rax, 1
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
lea rax, [rel str_213]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_92_1
mov rax, -1
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp end_92
block_92_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
lea rax, [rel str_214]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_92_3
block_92_3:
end_92:
mov rax, 0
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_93_1
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
ret
block_93_1:
end_93:
while_94:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_94
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_215]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_1:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_216]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_3
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_3:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_217]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_5
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_5:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_218]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 3
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_7
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 3
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_7:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_219]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 4
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_9
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 4
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_9:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_220]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 5
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_11
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 5
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_11:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_221]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 6
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_13
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 6
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_13:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_222]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 7
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_15
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 7
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_15:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_223]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 8
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_17
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 8
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_17:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_224]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 9
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_19
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 9
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_19:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_225]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 10
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_21
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 10
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_21:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_226]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 11
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_23
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 11
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_23:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_227]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 12
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_25
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 12
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_25:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_228]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 13
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_27
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 13
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_27:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_229]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 14
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_29
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 14
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_29:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_230]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 15
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_95_31
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 15
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp end_95
block_95_31:
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_11
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rax, 0
mov [rbp], rax
add rbp, 8
ret
block_95_32:
end_95:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
jmp while_94
end_94:
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_50
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
ret

func_17:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 16
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_85
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_96_1
lea rax, [rel str_231]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_61
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_136
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
block_96_1:
end_96:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_97_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_232]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, -1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
block_97_1:
end_97:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_98_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
lea rax, [rel str_233]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
block_98_1:
end_98:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
lea rax, [rel str_234]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
while_99:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_55
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_99
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_153
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 40], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_154
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
jmp while_99
end_99:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
while_100:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz end_100
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 48], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 56
mov [rel loc_stack_ptr], rax
call func_56
mov rax, [rel loc_stack_ptr]
sub rax, 56
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 56], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 56]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 64
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 64
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 48]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 64
mov [rel loc_stack_ptr], rax
call func_51
mov rax, [rel loc_stack_ptr]
sub rax, 64
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 64
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 64
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 64
mov [rel loc_stack_ptr], rax
call func_68
mov rax, [rel loc_stack_ptr]
sub rax, 64
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
jmp while_100
end_100:
ret

func_155:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_156
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_157:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_156
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_158:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_156
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_159:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 32
mov [rel loc_stack_ptr], rax
call func_156
mov rax, [rel loc_stack_ptr]
sub rax, 32
mov [rel loc_stack_ptr], rax
ret

func_160:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 40
mov [rel loc_stack_ptr], rax
call func_156
mov rax, [rel loc_stack_ptr]
sub rax, 40
mov [rel loc_stack_ptr], rax
ret

func_161:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 40], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 0
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 48
mov [rel loc_stack_ptr], rax
call func_156
mov rax, [rel loc_stack_ptr]
sub rax, 48
mov [rel loc_stack_ptr], rax
ret

func_136:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, 0x2000001
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_157
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_162:
mov rax, 0x2000002
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_155
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_116:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rax, 0x2000003
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_159
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_118:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rax, 0x2000004
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_159
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_110:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rax, 0x2000005
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_159
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_114:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, 0x2000006
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_157
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_112:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rax, 0x2000000
mov [rbp], rax
add rbp, 8
mov rax, 10
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_157
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_163:
mov rax, 0x2000000
mov [rbp], rax
add rbp, 8
mov rax, 20
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_155
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_164:
mov rax, 0x2000000
mov [rbp], rax
add rbp, 8
mov rax, 39
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_155
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
ret

func_165:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rax, 0x2000000
mov [rbp], rax
add rbp, 8
mov rax, 54
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_159
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_166:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
mov rax, 0x2000000
mov [rbp], rax
add rbp, 8
mov rax, 59
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 24
mov [rel loc_stack_ptr], rax
call func_159
mov rax, [rel loc_stack_ptr]
sub rax, 24
mov [rel loc_stack_ptr], rax
ret

func_133:
lea rax, [rel mem]
mov [rbp], rax
add rbp, 8
ret

func_1:
mov rax, 8
mov [rbp], rax
add rbp, 8
ret

func_54:
mov rax, 0
mov [rbp], rax
add rbp, 8
ret

func_60:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
ret

func_7:
sub rbp, 8
mov rbx, [rbp]
sub rbp, 8
mov rax, [rbp]
mov [rax], rbx
ret

func_3:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rax]
mov [rbp], rbx
add rbp, 8
ret

func_51:
sub rbp, 8
mov rbx, [rbp]
sub rbp, 8
mov rax, [rbp]
mov [rax], bl
ret

func_56:
sub rbp, 8
mov rax, [rbp]
movzx rbx, byte [rax]
mov [rbp], rbx
add rbp, 8
ret

func_2:
sub rbp, 8
mov rax, [rbp]
sub rbp, 8
mov rbx, [rbp]
add rbx, rax
mov [rbp], rbx
add rbp, 8
ret

func_68:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_2
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_67:
sub rbp, 8
mov rax, [rbp]
sub rbp, 8
mov rbx, [rbp]
sub rbx, rax
mov [rbp], rbx
add rbp, 8
ret

func_65:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 8
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 8
mov [rel loc_stack_ptr], rax
ret

func_66:
sub rbp, 8
mov rax, [rbp]
sub rbp, 8
mov rbx, [rbp]
mul rbx
mov [rbp], rax
add rbp, 8
ret

func_167:
sub rbp, 8
mov rcx, [rbp]
sub rbp, 8
mov rax, [rbp]
cqo
idiv rcx
mov [rbp], rax
add rbp, 8
mov [rbp], rdx
add rbp, 8
ret

func_154:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_167
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret

func_153:
mov rax, [rel loc_stack_ptr]
add rax, 0
mov [rel loc_stack_ptr], rax
call func_167
mov rax, [rel loc_stack_ptr]
sub rax, 0
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
ret

func_139:
sub rbp, 8
mov rcx, [rbp]
sub rbp, 8
mov rax, [rbp]
shr rax, cl
mov [rbp], rax
add rbp, 8
ret

func_168:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_101_1
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
ret
block_101_1:
end_101:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, 63
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
sub rbp, 8
mov rax, [rbp]
test rax, rax
jz block_102_1
mov rax, 0
mov [rbp], rax
add rbp, 8
ret
block_102_1:
end_102:
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, 2
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_66
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_65
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_168
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_80:
sub rbp, 8
mov rax, [rbp]
sub rbp, 8
mov rbx, [rbp]
and rax, rbx
mov [rbp], rax
add rbp, 8
ret

func_85:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_169
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_169
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_169
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_170:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_169
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_169
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_80
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_85
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_169:
sub rbp, 8
mov rax, [rbp]
not rax
mov [rbp], rax
add rbp, 8
ret

func_50:
mov rax, 1
mov [rbp], rax
add rbp, 8
ret

func_11:
mov rax, 0
mov [rbp], rax
add rbp, 8
ret

func_14:
mov rcx, 0
mov rdx, 1
sub rbp, 8
mov rax, [rbp]
sub rbp, 8
mov rbx, [rbp]
cmp rbx, rax
cmove rcx, rdx
mov [rbp], rcx
add rbp, 8
ret

func_55:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_14
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_109:
mov rcx, 0
mov rdx, 1
sub rbp, 8
mov rax, [rbp]
sub rbp, 8
mov rbx, [rbp]
cmp rax, rbx
cmovl rcx, rdx
mov [rbp], rcx
add rbp, 8
ret

func_105:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_106
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_106:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_108:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
mov rax, 1
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_109
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
mov rax, [rel loc_stack_ptr]
add rax, 16
mov [rel loc_stack_ptr], rax
call func_67
mov rax, [rel loc_stack_ptr]
sub rax, 16
mov [rel loc_stack_ptr], rax
ret

func_156:
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 0], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 8], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 16], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 24], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 32], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 40], rax
sub rbp, 8
mov rax, [rbp]
mov rbx, [rel loc_stack_ptr]
mov [rbx + 48], rax
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 48]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 40]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 32]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 24]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 16]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 8]
mov [rbp], rax
add rbp, 8
mov rbx, [rel loc_stack_ptr]
mov rax, [rbx + 0]
mov [rbp], rax
add rbp, 8
sub rbp, 8
mov r9, [rbp]
sub rbp, 8
mov r8, [rbp]
sub rbp, 8
mov r10, [rbp]
sub rbp, 8
mov rdx, [rbp]
sub rbp, 8
mov rsi, [rbp]
sub rbp, 8
mov rdi, [rbp]
sub rbp, 8
mov rax, [rbp]
push rbp
mov rbp, rsp
syscall
pop rbp
jc .syscall_error
mov [rbp], rax
add rbp, 8
jmp .syscall_end
.syscall_error:
mov rax, -1
mov [rbp], rax
add rbp, 8
.syscall_end:
ret

section .data

str_0: db 48,49,50,51,52,53,54,55,0
str_1: db 48,49,50,51,52,53,54,55,56,57,48,49,50,51,52,53,54,55,56,57,48,49,50,51,52,53,54,55,56,57,48,0
str_2: db 119,104,105,108,101,0
str_3: db 119,104,105,108,101,32,100,111,0
str_4: db 105,102,0
str_5: db 101,108,105,102,0
str_6: db 101,108,115,101,0
str_7: db 32,9,10,0
str_8: db 48,49,50,51,52,53,54,55,56,57,0
str_9: db 97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,95,43,45,42,60,61,62,40,41,123,125,91,93,63,33,58,47,37,0
str_10: db 97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,48,49,50,51,52,53,54,55,56,57,95,43,45,42,60,61,62,40,41,123,125,91,93,63,33,58,47,37,0
str_11: db 97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,48,49,50,51,52,53,54,55,56,57,95,43,45,42,60,61,62,40,41,123,125,91,93,63,33,58,47,37,32,35,46,58,44,59,0
str_12: db 110,116,115,92,34,0
str_13: db 109,97,105,110,0
str_14: db 34,0
str_15: db 35,0
str_16: db 105,110,118,97,108,105,100,32,99,104,97,114,97,99,116,101,114,58,32,0
str_17: db 63,0
str_18: db 105,110,118,97,108,105,100,32,99,104,97,114,97,99,116,101,114,32,105,110,32,116,111,107,101,110,58,32,0
str_19: db 63,0
str_20: db 92,0
str_21: db 34,0
str_22: db 105,110,118,97,108,105,100,32,99,104,97,114,97,99,116,101,114,32,105,110,32,115,116,114,105,110,103,58,32,0
str_23: db 63,0
str_24: db 105,110,118,97,108,105,100,32,99,104,97,114,97,99,116,101,114,32,101,115,99,97,112,101,100,32,99,104,97,114,97,99,116,101,114,58,32,0
str_25: db 63,0
str_26: db 10,0
str_27: db 117,110,105,109,112,108,101,109,101,110,116,97,100,32,108,101,120,101,114,32,115,116,97,116,117,115,0
str_28: db 102,117,110,99,0
str_29: db 105,110,99,108,117,100,101,0
str_30: db 117,110,97,98,108,101,32,116,111,32,102,105,110,100,32,102,105,108,101,58,32,0
str_31: db 117,110,101,120,112,101,99,116,101,100,32,116,111,107,101,110,32,105,110,32,115,111,117,114,99,101,58,32,0
str_32: db 117,110,101,120,112,101,99,116,101,100,32,101,110,100,32,111,102,32,116,111,107,101,110,115,32,97,102,116,101,114,32,105,110,99,108,117,100,101,58,32,0
str_33: db 117,110,101,120,112,101,99,116,101,100,32,116,111,107,101,110,32,97,102,116,101,114,32,105,110,99,108,117,100,101,58,32,0
str_34: db 117,110,101,120,112,101,99,116,101,100,32,101,110,100,32,111,102,32,116,111,107,101,110,115,32,97,102,116,101,114,32,102,117,110,99,0
str_35: db 117,110,101,120,112,101,99,116,101,100,32,116,111,107,101,110,32,97,102,116,101,114,32,102,117,110,99,58,32,0
str_36: db 100,111,0
str_37: db 117,110,101,120,112,101,99,116,101,100,32,101,110,100,32,111,102,32,116,111,107,101,110,115,32,105,110,32,102,117,110,99,116,105,111,110,32,97,114,103,117,109,101,110,116,115,0
str_38: db 117,110,101,120,112,101,99,116,101,100,32,116,111,107,101,110,32,105,110,32,102,117,110,99,116,105,111,110,32,97,114,103,117,109,101,110,116,58,32,0
str_39: db 119,104,105,108,101,0
str_40: db 100,111,0
str_41: db 105,102,0
str_42: db 101,108,105,102,0
str_43: db 101,108,105,102,32,99,97,110,32,110,111,116,32,98,101,32,116,104,101,32,115,116,97,114,116,32,111,102,32,97,32,98,108,111,99,107,0
str_44: db 101,108,105,102,32,99,97,110,32,111,110,108,121,32,99,111,109,101,32,97,102,116,101,114,32,101,108,115,101,0
str_45: db 101,108,115,101,0
str_46: db 101,108,115,101,32,99,97,110,32,110,111,116,32,98,101,32,116,104,101,32,115,116,97,114,116,32,111,102,32,97,32,98,108,111,99,107,0
str_47: db 101,108,115,101,32,99,97,110,32,111,110,108,121,32,99,111,109,101,32,97,102,116,101,114,32,105,102,32,111,114,32,101,108,105,102,32,0
str_48: db 101,110,100,0
str_49: db 101,110,100,32,99,97,110,32,110,111,116,32,99,111,109,101,32,97,102,116,101,114,32,119,104,105,108,101,0
str_50: db 117,110,107,110,111,119,110,32,98,108,111,99,107,32,116,121,112,101,58,32,0
str_51: db 114,101,116,0
str_52: db 108,101,116,0
str_53: db 97,115,109,0
str_54: db 45,49,0
str_55: db 117,110,101,120,112,101,99,116,101,100,32,101,110,100,32,111,102,32,116,111,107,101,110,115,32,105,110,32,102,117,110,99,116,105,111,110,32,98,111,100,121,0
str_56: db 117,110,101,120,112,101,99,116,101,100,32,116,111,107,101,110,32,105,110,32,102,117,110,99,116,105,111,110,32,98,111,100,121,58,32,0
str_57: db 10,0
str_58: db 117,110,101,120,112,101,99,116,101,100,32,101,110,100,32,111,102,32,116,111,107,101,110,115,32,97,102,116,101,114,32,97,115,109,0
str_59: db 117,110,101,120,112,101,99,116,101,100,32,116,111,107,101,110,32,97,102,116,101,114,32,97,115,109,58,32,0
str_60: db 117,110,101,120,112,101,99,116,101,100,32,101,110,100,32,111,102,32,116,111,107,101,110,115,32,97,102,116,101,114,32,108,101,116,0
str_61: db 117,110,101,120,112,101,99,116,101,100,32,116,111,107,101,110,32,97,102,116,101,114,32,108,101,116,58,32,0
str_62: db 117,110,105,109,112,108,101,109,101,110,116,101,100,32,112,97,114,115,101,114,32,115,116,97,116,117,115,0
str_63: db 34,0
str_64: db 92,0
str_65: db 92,0
str_66: db 92,0
str_67: db 34,0
str_68: db 34,0
str_69: db 110,0
str_70: db 10,0
str_71: db 116,0
str_72: db 9,0
str_73: db 115,0
str_74: db 105,110,118,97,108,105,100,32,101,115,99,97,112,101,32,99,104,97,114,97,99,116,101,114,0
str_75: db 109,111,118,32,91,114,98,112,93,44,32,0
str_76: db 10,0
str_77: db 97,100,100,32,114,98,112,44,32,0
str_78: db 10,0
str_79: db 115,117,98,32,114,98,112,44,32,0
str_80: db 10,0
str_81: db 109,111,118,32,0
str_82: db 44,32,91,114,98,112,93,10,0
str_83: db 103,108,111,98,97,108,32,95,109,97,105,110,10,0
str_84: db 115,101,99,116,105,111,110,32,46,116,101,120,116,10,0
str_85: db 10,0
str_86: db 95,109,97,105,110,58,10,0
str_87: db 108,101,97,32,114,97,120,44,32,91,114,101,108,32,109,101,109,93,10,0
str_88: db 109,111,118,32,91,114,101,108,32,109,101,109,95,112,116,114,93,44,32,114,97,120,10,0
str_89: db 108,101,97,32,114,98,112,44,32,91,114,101,108,32,100,97,116,95,115,116,97,99,107,93,10,0
str_90: db 108,101,97,32,114,97,120,44,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,93,10,0
str_91: db 109,111,118,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,95,112,116,114,93,44,32,114,97,120,10,0
str_92: db 114,100,120,0
str_93: db 114,100,105,0
str_94: db 114,115,105,0
str_95: db 95,101,120,105,116,58,10,0
str_96: db 109,111,118,32,114,97,120,44,32,48,120,50,48,48,48,48,48,49,10,0
str_97: db 109,111,118,32,114,100,105,44,32,48,10,0
str_98: db 115,121,115,99,97,108,108,10,0
str_99: db 10,0
str_100: db 10,0
str_101: db 115,101,99,116,105,111,110,32,46,100,97,116,97,10,0
str_102: db 10,0
str_103: db 10,0
str_104: db 115,101,99,116,105,111,110,32,46,98,115,115,10,0
str_105: db 59,59,32,115,111,109,101,32,103,108,111,98,97,108,32,118,97,114,115,10,0
str_106: db 10,0
str_107: db 59,59,32,115,116,97,99,107,32,102,111,114,32,108,111,99,97,108,32,118,97,114,105,97,98,108,101,115,10,0
str_108: db 108,111,99,95,115,116,97,99,107,95,112,116,114,58,32,114,101,115,113,32,49,10,0
str_109: db 108,111,99,95,115,116,97,99,107,58,32,114,101,115,113,32,54,53,53,51,54,10,0
str_110: db 108,111,99,95,115,116,97,99,107,95,101,110,100,58,10,0
str_111: db 10,0
str_112: db 59,59,32,115,116,97,99,107,32,102,111,114,32,100,97,116,97,32,101,108,101,109,101,110,116,115,10,0
str_113: db 100,97,116,95,115,116,97,99,107,58,32,114,101,115,113,32,54,53,53,51,54,10,0
str_114: db 100,97,116,95,115,116,97,99,107,95,101,110,100,58,10,0
str_115: db 10,0
str_116: db 59,59,32,109,101,109,111,114,121,32,114,101,103,105,111,110,10,0
str_117: db 109,101,109,95,112,116,114,58,32,114,101,115,113,32,49,10,0
str_118: db 109,101,109,58,32,114,101,115,98,32,49,54,55,55,55,50,49,54,10,0
str_119: db 109,101,109,95,101,110,100,58,10,0
str_120: db 10,0
str_121: db 10,0
str_122: db 102,117,110,99,95,0
str_123: db 58,10,0
str_124: db 59,59,32,112,111,112,32,108,111,99,97,108,32,118,97,114,105,97,98,108,101,10,0
str_125: db 114,97,120,0
str_126: db 109,111,118,32,114,98,120,44,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,95,112,116,114,93,10,0
str_127: db 109,111,118,32,91,114,98,120,32,43,32,0
str_128: db 93,44,32,114,97,120,10,0
str_129: db 59,59,32,112,117,115,104,32,108,111,99,97,108,32,118,97,114,105,97,98,108,101,10,0
str_130: db 109,111,118,32,114,98,120,44,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,95,112,116,114,93,10,0
str_131: db 109,111,118,32,114,97,120,44,32,91,114,98,120,32,43,32,0
str_132: db 93,10,0
str_133: db 114,97,120,0
str_134: db 59,59,32,105,110,99,114,101,109,101,110,116,32,108,111,99,97,108,32,112,111,105,110,116,101,114,10,0
str_135: db 109,111,118,32,114,97,120,44,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,95,112,116,114,93,10,0
str_136: db 97,100,100,32,114,97,120,44,32,0
str_137: db 10,0
str_138: db 109,111,118,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,95,112,116,114,93,44,32,114,97,120,10,0
str_139: db 59,59,32,100,101,99,114,101,109,101,110,116,32,108,111,99,97,108,32,112,111,105,110,116,101,114,10,0
str_140: db 109,111,118,32,114,97,120,44,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,95,112,116,114,93,10,0
str_141: db 115,117,98,32,114,97,120,44,32,0
str_142: db 10,0
str_143: db 109,111,118,32,91,114,101,108,32,108,111,99,95,115,116,97,99,107,95,112,116,114,93,44,32,114,97,120,10,0
str_144: db 59,59,32,112,117,115,104,32,110,117,109,98,101,114,10,0
str_145: db 109,111,118,32,114,97,120,44,32,0
str_146: db 10,0
str_147: db 114,97,120,0
str_148: db 59,59,32,112,117,115,104,32,110,117,109,98,101,114,10,0
str_149: db 108,101,97,32,114,97,120,44,32,91,114,101,108,32,115,116,114,95,0
str_150: db 93,10,0
str_151: db 114,97,120,0
str_152: db 115,116,114,95,0
str_153: db 58,32,100,98,32,0
str_154: db 44,0
str_155: db 48,10,0
str_156: db 59,59,32,102,117,110,99,116,105,111,110,32,99,97,108,108,10,0
str_157: db 99,97,108,108,32,102,117,110,99,95,0
str_158: db 10,0
str_159: db 59,59,32,114,101,116,117,114,110,10,0
str_160: db 114,101,116,10,0
str_161: db 114,97,120,0
str_162: db 116,101,115,116,32,114,97,120,44,32,114,97,120,10,0
str_163: db 106,122,32,98,108,111,99,107,95,0
str_164: db 95,0
str_165: db 10,0
str_166: db 106,109,112,32,101,110,100,95,0
str_167: db 10,0
str_168: db 98,108,111,99,107,95,0
str_169: db 95,0
str_170: db 58,10,0
str_171: db 98,108,111,99,107,95,0
str_172: db 95,0
str_173: db 58,10,0
str_174: db 101,110,100,95,0
str_175: db 58,10,0
str_176: db 119,104,105,108,101,95,0
str_177: db 58,10,0
str_178: db 114,97,120,0
str_179: db 116,101,115,116,32,114,97,120,44,32,114,97,120,10,0
str_180: db 106,122,32,101,110,100,95,0
str_181: db 10,0
str_182: db 106,109,112,32,119,104,105,108,101,95,0
str_183: db 10,0
str_184: db 101,110,100,95,0
str_185: db 58,10,0
str_186: db 97,114,114,97,121,32,105,110,100,101,120,32,111,117,116,32,111,117,102,32,98,111,117,110,100,115,0
str_187: db 97,114,114,97,121,32,105,110,100,101,120,32,111,117,116,32,111,117,102,32,98,111,117,110,100,115,0
str_188: db 97,114,114,97,121,32,105,110,100,101,120,32,111,117,116,32,111,117,102,32,98,111,117,110,100,115,0
str_189: db 97,114,114,97,121,32,105,110,100,101,120,32,111,117,116,32,111,117,102,32,98,111,117,110,100,115,0
str_190: db 108,105,115,116,32,105,110,100,101,120,32,111,117,116,32,111,102,32,98,111,117,110,100,115,0
str_191: db 108,105,115,116,32,105,110,100,101,120,32,111,117,116,32,111,102,32,98,111,117,110,100,115,0
str_192: db 108,105,115,116,32,105,110,100,101,120,32,111,117,116,32,111,102,32,98,111,117,110,100,115,0
str_193: db 108,105,115,116,32,105,110,100,101,120,32,111,117,116,32,111,102,32,98,111,117,110,100,115,0
str_194: db 108,105,115,116,32,105,110,100,101,120,32,111,117,116,32,111,102,32,98,111,117,110,100,115,0
str_195: db 108,105,115,116,32,105,110,100,101,120,32,111,117,116,32,111,102,32,98,111,117,110,100,115,0
str_196: db 108,105,115,116,32,105,110,100,101,120,32,111,117,116,32,111,102,32,98,111,117,110,100,115,0
str_197: db 101,114,114,111,114,32,99,114,101,97,116,105,110,103,32,97,110,100,32,111,112,101,110,105,110,103,32,102,105,108,101,58,32,0
str_198: db 101,114,114,111,114,32,111,112,101,110,105,110,103,32,102,105,108,101,58,32,0
str_199: db 101,114,114,111,114,32,114,101,109,111,118,105,110,103,32,102,105,108,101,58,32,0
str_200: db 101,114,114,111,114,32,99,108,111,115,105,110,103,32,102,100,32,0
str_201: db 10,0
str_202: db 48,0
str_203: db 48,0
str_204: db 109,97,108,108,111,99,32,111,117,116,32,111,102,32,109,101,109,111,114,121,0
str_205: db 65,0
str_206: db 49,50,51,52,53,54,55,56,57,48,49,50,51,52,53,54,0
str_207: db 48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102,0
str_208: db 48,49,50,51,52,53,54,55,56,57,48,49,50,51,52,53,54,55,56,57,48,49,50,51,52,53,54,55,56,57,48,0
str_209: db 10,0
str_210: db 10,0
str_211: db 115,116,114,105,110,103,32,99,111,117,108,100,32,110,111,116,32,98,101,32,99,111,110,118,101,114,116,101,100,32,116,111,32,105,110,116,58,32,0
str_212: db 105,110,118,97,108,105,100,32,98,97,115,101,0
str_213: db 45,0
str_214: db 43,0
str_215: db 48,0
str_216: db 49,0
str_217: db 50,0
str_218: db 51,0
str_219: db 52,0
str_220: db 53,0
str_221: db 54,0
str_222: db 55,0
str_223: db 56,0
str_224: db 57,0
str_225: db 97,0
str_226: db 98,0
str_227: db 99,0
str_228: db 100,0
str_229: db 101,0
str_230: db 102,0
str_231: db 105,110,118,97,108,105,100,32,98,97,115,101,0
str_232: db 45,0
str_233: db 48,0
str_234: db 48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102,0

section .bss
;; some global vars
org_rsp: resq 1
org_rbp: resq 1

;; stack for local variables
loc_stack_ptr: resq 1
loc_stack: resq 65536
loc_stack_end:

;; stack for data elements
dat_stack: resq 65536
dat_stack_end:

;; memory region
mem_ptr: resq 1
mem: resb 16777216
mem_end:

