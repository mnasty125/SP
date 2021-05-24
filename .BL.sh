#!/bin/bash

read a
read b
read c
d_1=$((a - b))
d_2=$((b - c))
d_3=$((a - c))
sum=$((d_1*d_1+d_2*d_2+d_3*d_3))
mult=$((d_1*d_2*d_3))
if [ $mult == 0 ]
then
    if [ $sum == 0 ]
    then
        echo "EQUILATERAL"
    else
        echo "ISOSCELES"
    fi
else
    echo "SCALENE"
fi
