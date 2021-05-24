#!/bin/bash

read number
len=${#number}
for ((i=0; i<len; i++))
do 
	A[$i]=${number:$i:1}
done 
B=($(for i in ${A[@]}; do echo $i; done | sort))
centr=$((len/2))
if ((len%2 != 0 ))
then
	deleted_i=$centr
else
	deleted_i=$((centr-1))
fi
echo ${B[$deleted_i]}
for (( i=0; i<len; i++ ))
do
	if (( ${A[i]} == ${B[deleted_i]} ))
	then
		unset A[i]
	fi
done
if ((${#A[@]} !=0 ))
then
		IFS=""
		echo "${A[*]}"	
else 
	echo "NULL"
fi
