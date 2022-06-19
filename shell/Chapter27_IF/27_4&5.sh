#! /bin/bash

INT=$1

######chapter27_4######
# use case of [[]]
if [[ "$INT" =~ ^-?[0-9]+$ ]];then
    if [[ "$INT" == 0 ]];then
        echo "INT is zero."
    else
        # if [[ $INT -lt 0 ]];then
        if [[ "$INT" < "0" ]];then
        # as test command.
        # '<' is for string compare by defalut sort rule(before bash4.0, by ASCII)
        # not for number
        # confirm:  [[ "-" < "0" ]];echo $?;0
        # confirm:  [[ "-1" < "0" ]];echo $?;1
            echo "INT is negative."
        else
            if [[ $(( INT%2 )) == 0 ]];then
                echo "INT is even."
            else 
                echo "INT is odd."
            fi
        fi
    fi
else
    echo "INT is not an integer."
fi

######chapter27_5######
# use case of (())
if [[ "$INT" =~ ^-?[0-9]+$ ]];then
    if (( INT == 0 ));then
        echo "INT is zero."
    else
        if (( INT < 0 ));then
            echo "INT is negative."
        else
            if (( $(( INT % 2 )) == 0 ));then
            # if (( (( INT % 2 )) == 0 ));then
                echo "INT is even."
            else    
                echo "INT is odd."
            fi
        fi
    fi
else
    echo "INT is not an integer."
fi