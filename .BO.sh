#!/bin/bash

read n
read -a arr
for i in ${arr[@]}
do
	once=0
	for j in ${arr[@]}
	do
   		if [ $i -eq $j ]
		then
        	    once+=1
   		fi
	done
 	if [ $once -eq 1 ]
	then
    	    echo $i
	fi
done
