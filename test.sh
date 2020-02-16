#!/bin/bash

gcc main.c -o exec
echo "LIBC :"
./exec
echo ""
make re -s
echo "MYLIB :"
LD_PRELOAD=$PWD/libasm.so ./exec
rm exec
make fclean -s