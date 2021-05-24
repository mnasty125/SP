#!/bin/bash

read X
sum=0
for (( i = 0; i < X; i++ ))
do
    read a
    sum=$((sum + a))
done
echo $sum $X | awk '{printf "%.3f", $1 / $2}'
