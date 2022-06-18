#! /bin/bash

if test $1 == 5 ; then
    echo 'x equals 5'
else
    echo 'x not equals 5'
fi

if [ $1 = 5 ]; then
    echo 'x equals 5'
else
    echo 'x not equals 5'
fi


if (($1 == 5)); then
    echo 'x equals 5'
else
    echo 'x not equals 5'
fi


if [[ $1 == 5 ]]; then
    echo 'x equals 5'
else
    echo 'x not equals 5'
fi