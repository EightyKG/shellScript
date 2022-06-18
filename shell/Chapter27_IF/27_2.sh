#! /bin/bash

ls -d /usr/bin
echo $?
ls -d /bin/usr
echo $?

true
echo $?
false
echo $?

test 4 == 5
echo $?
test 5 == 5
echo $?

[ 4 == 5 ]
echo $?
[ 5 == 5 ]
echo $?

[[ 4 == 5 ]]
echo $?
[[ 5 == 5 ]]
echo $?

(( 4 == 5 ))
echo $?
(( 5 == 5 ))
echo $?
