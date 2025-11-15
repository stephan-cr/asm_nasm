;; -*- mode: nasm -*-

%define SYS_exit 60

default rel

extern printf
extern puts
extern sqrt

section .text
global _start
_start:
  movsd xmm0, [rel val]
  call sqrt
  lea rdi, [rel fmt]
  call printf
loop:
  lea rdi, [rel str]
  call puts
  dec dword [counter]
  cmp dword [counter], 0
  jnz loop
  mov rdi, 0
  mov rax, SYS_exit
  syscall
  ret

section .rodata
str: db "Hello World", 0
val: dq 2.0
fmt: db "sqrt = %f", 10, 0

section .data
counter: dw 10
