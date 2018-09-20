section .data
txt:
db "section .data%ctxt:%cdb %c%s%c, 0%cglobal _main%cglobal _display%cextern _printf%csection .text%c_display:%cpush rbp%cmov rbp, rsp%cmov rcx, 0%cnew_line:%cpush 10%ccmp rcx, 35%cje print%cinc rcx%cjmp new_line%cprint:%clea rdi, [rel txt]%cmov rsi, 10%cmov rdx, 10%cmov rcx, 34%clea r8, [rel txt]%cmov r9, 34%cxor rax, rax%ccall _printf%cleave%cret%c_main:%c;commentaire fonction main%cpush rbp%cmov rbp, rsp%ccall _display%cleave%cret%c;commentaire hors fonction%c", 0
global _main
global _display
extern _printf
section .text
_display:
push rbp
mov rbp, rsp
mov rcx, 0
new_line:
push 10
cmp rcx, 35
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
leave
ret
_main:
;commentaire fonction main
push rbp
mov rbp, rsp
call _display
leave
ret
;commentaire hors fonction
