#!/bin/bash

read N
read -a A

max=${A[0]}
min=${A[0]}
max_i=0
min_i=0
for (( i=0; i<$N; i++ ))
do
	if (( $max < ${A[i]} ))
	then
		max=${A[i]}
		max_i=$i
    fi

	if (( $min > ${A[i]} ))
	then 
		min=${A[i]}
		min_i=$i
	fi
done

if (( $min_i <  $max_i ))
then
    L=$min_i
    R=$max_i
else
    L=$max_i
    R=$min_i
fi

for (( i=L+1, j=1; i<=(R+L)/2; i++, j++ ))
do
    temp=${A[i]}
    A[i]=${A[R-j]}
    A[R-j]=$temp
done

printf "%s\n" "${A[@]}"
