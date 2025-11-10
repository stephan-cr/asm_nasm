cmake_minimum_required(VERSION 3.24)

project(asm_nasm LANGUAGES ASM_NASM)

add_executable(sample sample.asm)
target_link_libraries(sample PRIVATE c m)
target_link_options(sample PRIVATE "LINKER:-dynamic-linker,/lib64/ld-linux-x86-64.so.2")
