section .data
txt:
db "section .data%ctxt:%cdb %c%s%c%cglobal _main%cextern _printf%csection .text%c_main:%c;commentaire fonction main%cpush rbp%cmov rbp, rsp%cmov rcx, 0%cnew_line:%cpush 10%ccmp rcx, 29%cje print%cinc rcx%cjmp new_line%cprint:%clea rdi, [rel txt]%cmov rsi, 10%cmov rdx, 10%cmov rcx, 34%clea r8, [rel txt]%cmov r9, 34%cxor rax, rax%ccall _printf%cmov rsp, rbp%cleave%cret%c;commentaire hors fonction%c"
global _main
extern _printf
section .text
_main:
;commentaire fonction main
push rbp
mov rbp, rsp
mov rcx, 0
new_line:
push 10
cmp rcx, 29
je print
inc rcx
jmp new_line
print:
lea rdi, [rel txt]
mov rsi, 10
mov rdx, 10
mov rcx, 34
lea r8, [rel txt]
mov r9, 34
xor rax, rax
call _printf
mov rsp, rbp
leave
ret
;commentaire hors fonction
