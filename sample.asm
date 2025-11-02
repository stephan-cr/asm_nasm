;; -*- mode: nasm -*-

%define SYS_exit 60

default rel

extern puts

section .text
global _start
_start:
loop:
  lea rdi, [rel str]
  call puts
  dec [counter]
  cmp [counter], 0
  jnz loop
  mov rdi, 0
  mov eax, SYS_exit
  syscall
  ret

section .rodata
str: db "Hello World", 13, 0

section .data
counter: dw 10
