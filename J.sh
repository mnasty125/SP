#!/bin/bash

read N
for ((l=0; l<N; l++))
do
	read A B C
	for (( i=0; i<A; i++))
	do
		read D
		temp=( $D )
		for((j=0; j<B; j++))
		do
			X=$((i*B+j))
			H[$X]=${temp[$j]}
		done
	done
	
	c=$(( A*B ))
	for (( i=0; i<c; i++))
	do
		for((j=(i+1); j<c; j++))
		do
			if (( ${H[$i]} > ${H[$j]} ))
			then
				temp=${H[$j]}
				H[$j]=${H[$i]}
				H[$i]=$temp
			fi
		done
	done
	
	p=$((c/2))
	m=1
	ast=0
	for (( i=0; i<c; i++))
	do
		if (( ${H[$i]} % C != ${H[0]} % C ))
		then
			m=0
			break
		fi
		if (($i < $p))
		then
			ast=$((ast + (${H[$p]} - ${H[$i]}) / C ))
		else
			ast=$((ast + (${H[$i]} - ${H[$p]}) / C ))
		fi
	done
	
	if (($m != 0))
	then
		echo $ast
	else
		echo "-1"
	fi
done
