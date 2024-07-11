#!/bin/bash
read -p "enter the string:" a
len=${#a}
for ((i = $len - 1; i >= 0; i--)) 
    do 
    r="$r${a:$i:1}"
    done 
echo "reverse:$r" 