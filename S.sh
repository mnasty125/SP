#!/bin/bash

read T
for ((k=0; k<T; k++))
do
	read N
	read -a A
    D=()
	L=$((N/2))

	for ((i=0; i<L; i++))
	do
		for ((j= (i+1); j<L; j++))
		do
			if ((${A[j]} < ${A[i]}))
			then
				temp=${A[i]}
				A[i]=${A[j]}
				A[j]=$temp
			fi
		done
	done
	for ((i=(N-L); i<N; i++))
	do
		for ((j= (i+1); j<N; j++))
		do
			if ((${A[j]} > ${A[i]}))
			then
				temp=${A[i]}
				A[i]=${A[j]}
				A[j]=$temp
			fi
		done
	done
	for (( f=0; f<N; f++ ))
	do
    	echo ${A[f]}
    done
done
