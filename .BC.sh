#!/bin/bash

while read i
do
	l=1
	n=1
	while (( $l < $(($i*2)) ))
	do
	    for (( j = n; j >= 1; j-- ))
	    do
	        a[$l]="$j/$(( n + 1 - j ))"
	        (( l++ ))
	    done
    (( n++ ))
	done
    echo ${a[$i]}
done
