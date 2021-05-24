#!/bin/bash

read N K
temp=$((N*2))
if (( N <= K ))
then
	echo "2"
elif (( temp%K==0 ))
then 
	echo $(( temp/K ))
else
	echo $(( temp/K+1 ))
fi
