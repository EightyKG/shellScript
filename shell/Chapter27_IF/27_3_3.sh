#! /bin/bash

INT=5

if [ -n "$INT" ];then
    echo "INT is not zero."
fi

if [ -z "$INT" ];then
    echo "INT is zero."
fi

if [ "$INT" -eq 0 ];then
    echo "INT is zero."
else
    if [ "$INT" -gt 0 ];then
        echo "INT is positive."
    elif [ "$INT" -lt 0 ];then
        echo "INT is negtative."
    fi

    if [ $(("$INT" % 2)) -eq 0 ];then
        echo "INT is even."
    elif [ $(("$INT" % 2)) -ne 0 ];then
        echo "INT is odd."
    fi
fi