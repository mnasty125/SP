#!/bin/bash

read T
for (( k=0; k<T; k++ ))
do
	rec=0
	read N
	read -a A
	for (( r=0 ; r<N ; r++ ))
	do 
		if (( ${A[r]}==1))
		then 
			echo ${A[r]}
			(( rec++ ))
		else
#    		for (( i=2; (( i*i ))<=${A[r]}; i++ ))
    		for (( i=2; i<=${A[r]}/2; i++ ))
        	do
         		if (( ${A[r]} % i == 0 )) 
        		then
        			echo ${A[r]} 
    				((rec++))
                    break
    			fi
        	done
    	fi
	done
	if (( $rec == 0 ))
	then
			echo '-1'
	fi
done
