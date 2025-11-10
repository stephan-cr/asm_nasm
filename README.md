Simple example to demonstrate assembly on Linux x86\_64.

Key points
==========

- how define macros
- calling external functions (libc and libm in this case)
- IP relative addressing
- SSE for floating point operations
- .rodata (instead of .data) for constants
- shared libraries
- syscall
- CMake to drive NASM compilation

Building
========

Prerequisites
-------------

- [CMake](https://cmake.org/)
- [NASM](https://www.nasm.us/)
- Make or Ninja

Build
-----

```
cd asm_nasm && cmake -S . -B build && cmake --build build
```

or by using "presets" (sets Ninja as build system)

```
cd asm_nasm && cmake --preset default && cmake --build build
```
