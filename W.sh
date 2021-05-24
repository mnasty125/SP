#!/bin/bash

read N
if ((N == 0))
then
	echo '1'
elif ((N == 1))
then 
	echo '11'
elif ((N == 2))
then
	echo '50'
else
	N=$(( ($N - 2) + ($N - 3) ))
	L=$((2**($N)))
	echo $((L*100))
fi
