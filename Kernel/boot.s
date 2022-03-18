global start

section .text
bits 64
start:
    ; print to screen
    mov dword [0xb8000], 0x2fb2f4f
    hlt