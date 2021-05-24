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
	elif (( $min > ${A[i]} ))
	then 
		min=${A[i]}
		min_i=$i
	fi
done
M=${A[$max_i]}
A[$max_i]=${A[$min_i]}
A[$min_i]=$M
printf "%s\n" "${A[@]}"
