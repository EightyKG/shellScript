#!/bin/bash

FILE=/etc/passwd

read -p "Enter a username >" user_name
file_info=$(grep "^$user_name:" $FILE)

if [ -n "$file_info" ];then
    IFS=":" read user pw uid gid name home shell <<< "$file_info"
    echo "User = '$user'"
    echo "uid = '$uid'"
    echo "gid = '$gid'"
    echo "namee = '$name'"
    echo "home = '$home'"
    echo "shell = '$shell'"
else
    echo "No such user '$user_name'"
fi