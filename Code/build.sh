#!/bin/bash
rm _pyrisc.so

swig -python pyrisc.i
gcc -march=native -fPIC -c *.c -I/usr/include/python3.5m
ld -shared *.o -o _pyrisc.so
python3 -c "import pyrisc"

