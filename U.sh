#!/bin/bash

read -a A
len=544
N=${A[0]}
c=0
for (( i=1; i<=N; i++ ))
do
	if (( ${A[i]} <= $len ))
	then
		 echo "Crash $i"
		((i++))
		((c++))
	fi
done
if (( c == 0 ))
then 
	echo "No crash"
fi
