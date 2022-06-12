#! /bin/bash

##### use positionParameter in shell func
# Test method:
#   . simpleDemo.sh anotherFileName
#   to get file type and state
PROGNAME=$(basename $0)

if [[ -e $1 ]];then
    echo -e "\nFile Type:"
    file $1
    echo -e "\nFile Status:"
    stat $1
else
    echo "$PROGNAME: usage: $PROGNAME file"
fi


##### use positionParameter in shell func
# get /bin/bash type and state
file_path='/bin/bash'
file_info () {
    if [[ -e $1 ]];then
        echo -e "\nFile Type:"
        file $1
        echo -e "\nFile Status:"
        stat $1
    else
        echo "$FUNCNAME: usage: $FUNCNAME file"
    fi
}
file_info $file_path