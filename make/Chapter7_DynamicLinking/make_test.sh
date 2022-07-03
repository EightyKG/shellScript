#! /bin/bash

# gcc -fPIC -shared -o pic.so pic.c
gcc -shared -o pic_test.so pic_test.c
# ????fail to generate pic_NO_fPIC.so ? for fPIC option
gcc -shared -o pic_NO_fPIC.so pic.c ./pic_test.so