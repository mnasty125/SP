#!/bin/bash

read regex

while read line
do
	if [[ "$line" =~ $regex ]]
	then
		if [[ "$BASH_REMATCH[0]" =~ "$line" ]]
		then
			echo "YES"
		else
			echo "NO"
		fi
	else
			echo "NO"
	fi
done
