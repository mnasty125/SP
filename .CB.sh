#!/bin/bash

read N
for ((i=0; i<N; i++))
do 
read word
if [[ $word =~ ^(_|\.)[0-9]+[a-zA-Z]*_?$ ]]
then
echo "VALID"
else
echo "INVALID"
fi
done
