#!/bin/bash

read l
for (( i=0; i<l; i++ ))
do
	read a
	c=0
	while (( a-500>=0 )) 
	do
		a=$(( a-500 ))
		(( c++ ))
	done
	while (( a-200>=0 )) 
	do
		a=$((a-200))
		(( c++ ))
	done
	while (( a-100>=0 )) 
	do
		a=$(( a-100)) 
		(( c++ ))
	done
	while (( a-50>=0 )) 
	do
		a=$(( a-50))
		(( c++ ))
	done
	while (( a-20>=0 )) 
	do
		a=$((a-20))
		(( c++ ))
	done
	while (( a-10>=0 )) 
	do
		a=$((a-10))
		(( c++ ))
	done
	if (( a==0 ))
	then
	 	echo $c
	else 
		echo '-1'
	fi
done
