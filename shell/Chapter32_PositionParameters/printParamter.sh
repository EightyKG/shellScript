#!/bin/bash

count=1

echo "
Number of parameters: $#"
while [[ $# -gt 0 ]];do
    echo "$count = $1"
    count=$((count+1))
    shift
done