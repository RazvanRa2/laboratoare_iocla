%include "io.inc"

section .text
global CMAIN
CMAIN:
    ; cele doua numere se gasesc in eax si ebx
    mov eax, 4
    mov ebx, 1 

    ; TODO: aflati maximul folosind doar o instructiune de salt si push/pop
    cmp eax, ebx
    jg switch
    jmp print

switch:
    push eax
    mov eax, ebx
    pop ebx

print:
    PRINT_DEC 4, eax ; afiseaza minimul
    NEWLINE

    ret
