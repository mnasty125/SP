#!/bin/bash

read leg

for (( i=0; i<leg; i++ ))
do
	read line
	fact=1
	for (( j=2; j<=line; j++ ))
	do
		fact=$fact"*$j"
	done
	echo $fact | BC_LINE_LENGTH=99999 bc
done
