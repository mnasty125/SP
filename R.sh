#!/bin/bash

read n
for (( i=0; i<n; i++ ))
do
	read L W H
	(( R= 2*L*H + 2*W*H ))
	if (( R%16 == 0 ))
	then
		c=$(( R/16 ))
		echo $c
	else
		c=$(( R/16 + 1 ))
		echo $c
	fi
done
