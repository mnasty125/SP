#!/bin/bash

read l
regex="^[A-Za-z0-9][A-Za-z0-9._-]*[A-Za-z0-9]@[A-Za-z0-9]+\.[A-Za-z]{2,4}$"

for (( i=0; i<l; i++ ))
do
	read line
	if [[ $line =~ $regex ]]
		then
			echo "YES"
		else
			echo "NO"
		fi
done
