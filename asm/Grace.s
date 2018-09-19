section .data
txt: db "section .data%ctxt: db %c%s%c, 0%cfile: db %cGrace_kid.s%c, 0%cflag: db %cw+%c, 0%cglobal _main%cextern _fprintf%cextern _fopen%cextern _fclose%csection .text%c%%define NL 10%c%%define QUOTE 34%c%%define NUM_OF_NL 45%c%%macro grace 1%c_main:%cpush rbp%cmov rbp, rsp%clea rdi, [rel file]%clea rsi, [rel flag]%ccall _fopen%cmov rcx, 0%cnew_line:%cpush NL%ccmp rcx, NUM_OF_NL%cje print%cinc rcx%cjmp new_line%cprint:%cpush QUOTE%cpush QUOTE%cpush NL%cpush QUOTE%cpush QUOTE%cpush NL%cmov rdi, rax%clea rsi, [rel txt]%c%mov rdx, NL%cmov rcx, QUOTE%clea r8, [rel txt]%cmov r9, QUOTE%cxor rax, rax%ccall _fprintf%cmov rsp, rbp%cleave%cret%c%%endmacro%c;fin macro%cstart:%cgrace x%c", 0
file: db "Grace_kid.s", 0
flag: db "w+", 0
global _main
extern _fprintf
extern _fopen
extern _fclose
section .text
%define NL 10
%define QUOTE 34
%define NUM_OF_NL 45
%macro grace 1
_main:
push rbp
mov rbp, rsp
lea rdi, [rel file]
lea rsi, [rel flag]
call _fopen
mov rcx, 0
new_line:
push NL
cmp rcx, NUM_OF_NL
je print
inc rcx
jmp new_line
print:
push QUOTE
push QUOTE
push NL
push QUOTE
push QUOTE
push NL
mov rdi, rax
lea rsi, [rel txt]
mov rdx, NL
mov rcx, QUOTE
lea r8, [rel txt]
mov r9, QUOTE
xor rax, rax
call _fprintf
mov rsp, rbp
leave
ret
%endmacro
;fin macro
start:
grace x
