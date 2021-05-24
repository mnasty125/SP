#!/bin/bash

read N
read -a A
B=($(for i in ${A[@]}; do echo $i; done | sort))
max=0
S=1
for (( i=1; i<N; i++ ))
do
	if (( ${B[i]} == ${B[i-1]} ))
	 then
		(( S++ ))
    else
		if (( $S > $max ))
		then
			max=$S			
		fi
		S=1
    fi
done
if (( $S > $max ))
	then
		max=$S		
fi
echo $max 
