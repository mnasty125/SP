#!/bin/bash

read number
len=${#number}
for ((i=0; i<len; i++))
do 
	A[$i]=${number:$i:1}
done 
max=${A[0]}
max_i=0
for (( i=0; i<len; i++ ))
do
	if (( $max < ${A[i]} ))
	then
		max=${A[i]}
		max_i=$i
	fi
done
centr=$((len/2))
if ((len%2 != 0 ))
then
	if ((max_i > centr ))
	then
		echo '1'
	elif ((max_i < centr ))
	then 
		echo '-1'
	else 
		echo '0'
	fi
else
	if ((max_i > centr )) || ((max_i > centr-1 ))
	then
		echo '1'
	elif ((max_i < centr )) || ((max_i < centr-1 )) 
	then 
		echo '-1'
	else 
		echo '0'
	fi
fi
