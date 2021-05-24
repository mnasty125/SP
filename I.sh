#!/bin/bash

read N M
for (( i=1; i<=M; i++))
do
	for (( j=1; j<=N; j++))
	do
		temp=$(( i*N+j ))
		if (( $i == 1 ))
		then
			D[temp]="1"
		else
			D[temp]="0"
		fi
	done
done
for (( i=1; i<M; i++))
do
	for (( j=1; j<=N; j++))
	do
		for (( k=1; (j*k)<=N; k++))
		do
			index=$(( (i+1)*N +j*k))
			index_=$((i*N+j))
			D[index]=$((${D[index_]} + ${D[index]} ))
		done
	done
done

SUM=0
for (( i=1; i<=N; i++))
do
	temp=$((M*N+i))
	SUM=$(($SUM + ${D[temp]}))
done

echo $SUM
