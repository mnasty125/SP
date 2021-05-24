#!/bin/bash

read N
read -a A
read -a B
Sum=0
for ((i=0; i<N; i++ ))
do
	if ((${A[i]} == 1 ))
	then
		Sum=$((Sum+ ${B[0]} ))
	elif ((${A[i]} == 2 ))
	then
		Sum=$((Sum+ ${B[1]} ))
	elif ((${A[i]} == 3 ))
	then
		Sum=$((Sum+ ${B[2]} ))
	elif ((${A[i]} == 4 ))
	then
		Sum=$((Sum+ ${B[3]} ))
	elif ((${A[i]} == 5 ))
	then
		Sum=$((Sum+ ${B[4]} ))
	fi
done
echo $Sum
