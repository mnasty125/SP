#!/bin/bash

read h1 m1 h2 m2
temp=0
while (( h1 <= h2 ))
do
	if ((m1 == 0))
	then
		if ((h1>12))
		then 
			((temp+=$((h1-12)) ))
		elif (( h1 == 0 ))
		then
			((temp+=12)) 
		else 
			((temp+=$h1))
		fi
	elif ((m1 == 30))
	then
		((temp++))
	fi
	if ((h1==h2)) && ((m1==m2))
	then
		break
	fi
	((m1++))
	if((m1 == 60))
	then
		m1=0
		((h1++))
	fi
done
echo $temp
