#! /bin/bash

echo $(((5**2)*3))
echo $(($((5**2))*3))

# mkdir {2008..2010}-{0{1..9},{10..12}}
# mkdir {2008..2010}-0{1..9} {2008..2010}-{10..12}}
# mkdir {2008..2010}-{0{1..9}, {10..12}}

echo $USER
# useable vaariables
# printenv | less

echo $(ls)
echo `ls`
echo 'ls'
ls -l $(which cp)
# file $(ls /usr/bin/* | grep zip)