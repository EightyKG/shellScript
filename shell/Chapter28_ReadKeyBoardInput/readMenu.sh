#!/bin/bash

showMenu () {
    clear
    echo "
Please Select:
1.Display System Information
2.Display Disk Space
3.Display Home Space Utilization
0.Quit
    "
    read -p "Enter selection [0-3]"
}

showMenu
while [ $REPLY != 0 ]; do
    if [[ $REPLY =~ ^[0-3]$ ]];then
        if [[ 1 == $REPLY ]];then
            echo "HOSTNAME:$HOSTNAME"
            sleep 3
        elif [[ 2 == $REPLY ]];then
            df -h
            sleep 3
        elif [[ 3 == $REPLY ]];then
            if [[ $(id -u) -eq 0 ]];then
                echo "Home Space Utilization (ALL USER)"
                du -sh /home/*
            else
                echo "Home Space Utilization ($USER)"
                du -sh $HOME
            fi
            sleep 3
        fi
    else
        echo "Invalid enytry."
    fi
    showMenu
done
echo "Program terminated."