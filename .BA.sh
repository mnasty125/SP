#!/bin/bash

read tests

for (( i=0; i<tests ; i++ ))
do
	read n
	k=0
	for ((j=0; j<n; j++))
	do
		if ((n%j==0))
		then
			((k++))
		fi
	done
	if ((k%2==0))
	then
	    echo '1'
	else
	    echo '0'
	fi
done
