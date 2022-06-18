#! /bin/bash

# FILE=~/.bashrc
FILE=''


if [ -e $FILE ];then
    if [ -f $FILE ];then
        echo "$FILE is a regular file {A..C}"
    fi
    if [ -d $FILE ];then
        echo "$FILE is a directory"
    fi
    if [ -r $FILE ];then
        echo $FILE is a readalbe file {A..C}.
    fi
    if [ -w $FILE ];then
        echo "$FILE is a writable file."
    fi
    if [ -x $FILE ];then
        echo "$FILE is a executable/searchable."
    fi
else
    echo "$FILE not exitst"
    # exit 1
fi


# if [ -e "$FILE" ];then
#     if [ -f "$FILE" ];then
#         echo "$FILE is a regular file {A..C}"
#     fi
#     if [ -d "$FILE" ];then
#         echo "$FILE is a directory"
#     fi
#     if [ -r "$FILE" ];then
#         echo $FILE is a readalbe file {A..C}.
#     fi
#     if [ -w "$FILE" ];then
#         echo "$FILE is a writable file."
#     fi
#     if [ -x "$FILE" ];then
#         echo "$FILE is a executable/searchable."
#     fi
# else
#     echo "$FILE not exitst"
#     # exit 1
# fi