#!/bin/bash

read number
K=0
len=${#number}
for ((i=0; i<len; i++))
do 
	A[$i]=${number:$i:1}
done 
if ((${#number} == 1))
then
    echo '0'
else
	for ((i=0; i<len; i++))
	do
		if ((${A[i]}<${A[i+1]}))
		then
			unset A[i]
			((K++))
			break
		fi
	done
	if ((K==0))
	then
		unset A[len-1]
	fi
	IFS=""
	echo "${A[*]}"
fi
