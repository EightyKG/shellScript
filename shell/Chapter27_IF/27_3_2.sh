#! /bin/bash

# ANSWER=maybe
ANSWER=maybe1

if [ -n "$ANSWER" ];then
    echo "There is ANSWER."
elif [ -z "$ANSWER" ];then
    echo "There is no ANSWER."
fi

if [ "$ANSWER" = "maybe" ];then
    echo "ANSWER is maybe. "
fi

if [ "$ANSWER" \> "maybe" ];then
    echo "ANSWER is after maybe when sort."
fi

if [ "$ANSWER" \< "maybe" ];then
    echo "ANSWER is before maybe when sort."
fi

if [ "$ANSWER" > "maybe" ];then
    echo "use > : ANSWER is after maybe when sort."
fi

if [ "$ANSWER" < "maybe" ];then
    echo "use > : ANSWER is before maybe when sort."
fi
