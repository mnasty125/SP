#!/bin/bash

read T
for (( i=0; i<T; i++ ))
do
	rec=0
	read N
	read -a A
	for (( r=0; r<N; r++ ))
	do
		if (( ${A[r]} == 1 ))
		then
			echo '1'
		fi
	done
	for (( j=0 ; j<N ; j++ ))
	do 
		for (( k=2; $(( k*k ))<=${A[j]} ; k++ ))
		do
		     if (( ${A[j]} % k == 0 ))
			 then
					 echo ${A[j]}
					(( rec+=1 ))
			fi
		done
	done
	if (( $rec == 0 ))
	then
			echo '-1'
	fi
done
