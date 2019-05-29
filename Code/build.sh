#!/bin/bash
rm _pyrisc.so

swig -python pyrisc.i
# need to set up the python library containing "Python.h"
#gcc -march=native -fPIC -c *.c -I/opt/anaconda3/envs/python3/include/python3.5m/
#gcc -march=native -fPIC -c *.c -I/usr/include/python3.6m
gcc -march=native -fPIC -c *.c -I/usr/include/python3.5m
ld -shared *.o -o _pyrisc.so
python3 -c "import pyrisc"

