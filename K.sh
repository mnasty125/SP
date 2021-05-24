#!/bin/bash

read T
for (( i=0; i<T; i++ ))
do
	rec=0
	read N
	read -a A
	for (( j=0 ; j<N ; j++ ))
	do
		count=0   
		for (( k=1; k<${A[j]}; k++ ))
		do
		     if (( ${A[j]} % k == 0 ))
			 then
		         count=$(( $count + $k ))
			 fi
		done
		if (( ${A[j]} == $count ))
		then
		            echo ${A[j]}
					(( rec+=1 ))
		fi
	done
	if (( $rec == 0 ))
	then
			echo '-1'
	fi
done
