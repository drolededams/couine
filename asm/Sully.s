section .data
txt: db "section .data%ctxt: db %c%s%c, 0%cflag: db %cw+%c, 0%cnew_file: db %cSully_%%d.s%c, 0%ccommand: db %cnasm -f macho64 Sully_%%d.s && gcc -Wall -Wextra -Werror Sully_%%d.o -o Sully_%%d && ./Sully_%%d%c, 0%ccommand2: db %cnasm -f macho64 Sully_%%d.s && gcc -Wall -Wextra -Werror Sully_%%d.o -o Sully_%%d%c, 0%c%%assign NUM  %d%cfile: db __FILE__, 0%cglobal _main%cextern _asprintf%cextern _free%cextern _fprintf%cextern _strchr%cextern _system%cextern _fopen%cextern _fclose%csection .text%c_main:%cpush rbp%cmov rbp, rsp%csub rsp, 16%cmov r15, NUM%ccmp r15, 0%cjl return%clea rdi, [rel file]%cmov rsi, '_'%ccall _strchr%ccmp rax, 0%cje open%cdec r15%copen:%clea rdi, [rel rbp - 16]%clea rsi, [rel new_file]%cmov rdx, r15%cxor rax, rax%ccall _asprintf%cmov rdi, [rbp - 16]%clea rsi, [rel flag]%ccall _fopen%ccmp rax, 0%cje return2%cmov r14, rax%cmov rdi, [rbp - 16]%ccall _free%cmov rdi, r14%clea rsi, [rel txt]%cmov rdx, 10%cmov rcx, 34%clea r8, [rel txt]%cmov r9, 34%cxor rax, rax%cmov r10, 0%cnew_line:%cpush 10%ccmp r10, 109%cje print%cinc r10%cjmp new_line%cprint:%cpush r15%cpush 10%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%cpush 10%ccall _fprintf%cmov rdi, r14%ccall _fclose%ccmp r15, 0%cjg cmd%ccmp r15, 0%cje cmd2%cjmp return%ccmd:%clea rdi, [rel rbp - 16]%clea rsi, [rel command]%cmov rdx, r15%cmov rcx, r15%cmov r8, r15%cmov r9, r15%cxor rax, rax%ccall _asprintf%cmov rdi, [rbp - 16]%ccall _system%cmov rdi, [rbp - 16]%ccall _free%cjmp return%ccmd2:%clea rdi, [rel rbp - 16]%clea rsi, [rel command2]%cmov rdx, r15%cmov rcx, r15%cmov r8, r15%cxor rax, rax%ccall _asprintf%cmov rdi, [rbp - 16]%ccall _system%creturn2:%cmov rdi, [rbp - 16]%ccall _free%creturn:%cleave%cret%c", 0
flag: db "w+", 0
new_file: db "Sully_%d.s", 0
command: db "nasm -f macho64 Sully_%d.s && gcc -Wall -Wextra -Werror Sully_%d.o -o Sully_%d && ./Sully_%d", 0
command2: db "nasm -f macho64 Sully_%d.s && gcc -Wall -Wextra -Werror Sully_%d.o -o Sully_%d", 0
%assign NUM  5
file: db __FILE__, 0
global _main
extern _asprintf
extern _free
extern _fprintf
extern _strchr
extern _system
extern _fopen
extern _fclose
section .text
_main:
push rbp
mov rbp, rsp
sub rsp, 16
mov r15, NUM
cmp r15, 0
jl return
lea rdi, [rel file]
mov rsi, '_'
call _strchr
cmp rax, 0
je open
dec r15
open:
lea rdi, [rel rbp - 16]
lea rsi, [rel new_file]
mov rdx, r15
xor rax, rax
call _asprintf
mov rdi, [rbp - 16]
lea rsi, [rel flag]
call _fopen
cmp rax, 0
je return2
mov r14, rax
mov rdi, [rbp - 16]
call _free
mov rdi, r14
lea rsi, [rel txt]
mov rdx, 10
mov rcx, 34
lea r8, [rel txt]
mov r9, 34
xor rax, rax
mov r10, 0
new_line:
push 10
cmp r10, 109
je print
inc r10
jmp new_line
print:
push r15
push 10
push 34
push 34
push 10
push 34
push 34
push 10
push 34
push 34
push 10
push 34
push 34
push 10
call _fprintf
mov rdi, r14
call _fclose
cmp r15, 0
jg cmd
cmp r15, 0
je cmd2
jmp return
cmd:
lea rdi, [rel rbp - 16]
lea rsi, [rel command]
mov rdx, r15
mov rcx, r15
mov r8, r15
mov r9, r15
xor rax, rax
call _asprintf
mov rdi, [rbp - 16]
call _system
mov rdi, [rbp - 16]
call _free
jmp return
cmd2:
lea rdi, [rel rbp - 16]
lea rsi, [rel command2]
mov rdx, r15
mov rcx, r15
mov r8, r15
xor rax, rax
call _asprintf
mov rdi, [rbp - 16]
call _system
return2:
mov rdi, [rbp - 16]
call _free
return:
leave
ret
