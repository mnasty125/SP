#!/bin/bash

read N
res=()
for ((i=0; i<$N; ++i)); do
    read line
    tag=$(echo $line | grep -Eo '<\s*\w+\s*' | sed 's/<//')
    res+=($tag)
done
sorted=($(for l in ${res[@]}; do echo $l; done | sort -u))
echo ${sorted[@]} | sed 's/ /;/g'
