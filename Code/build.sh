#!/bin/bash
rm _pyrisc.so

swig -python pyrisc.i
gcc -march=native -fPIC -c *.c -I/opt/anaconda3/envs/python3/include/python3.5m/
ld -shared *.o -o _pyrisc.so
python3 -c "import pyrisc"

