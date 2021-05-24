#!/bin/bash

read c
b=""
for (( i=0; i<$c; i++ ))
do
    read line;
    b="$b $line"
done
read s
for (( i=0; i<$s; i++ ))
do
    read line;
    echo "$b" | grep -o "\<$line\>" | wc -l
done
