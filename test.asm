.MODEL SMALL  ; ou outro modelo de memória como TINY ou LARGE
.STACK 100h   ; Define a pilha
.DATA         ; Segmento de dados
msg db "Hello, world!", '$'

.CODE         ; Segmento de código
main PROC
    mov ax, @data
    mov ds, ax
    mov ah, 09h
    lea dx, msg
    int 21h
    mov ah, 4Ch
    int 21h
main ENDP
END main      ; Ponto de entrada