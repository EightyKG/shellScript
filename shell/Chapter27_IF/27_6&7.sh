#! /bin/bash

INT=$1

MIN_VAL=1
MAX_VAL=100

if [[ "$INT" =~ ^-?[0-9]+$ ]];then
    if [ $INT -ge $MIN_VAL -a $INT -le $MAX_VAL ];then
        echo "$INT is within $MIN_VAL and $MAX_VAL."
    else
        echo "$INT is out of $MIN_VAL and $MAX_VAL."
    fi
else
    echo "INT is not an integer."
fi

[ -d temp ] && rm -r temp
mkdir temp && cd temp
cd ..
[ -d temp ] || rm -r temp