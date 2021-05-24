#!/bin/bash

read N
D=2
Z=0
d=2
z=2
for ((i=1; i<N; i++))
do
	D=$(( D * 2 ))
	Z=$(( D + d ))
	z=$(( D - Z / 2 ))
	d=$(( Z - Z / 2 ))
done
echo $z $d
