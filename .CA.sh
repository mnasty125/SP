#!/bin/bash

read n
text=""
for (( i=0; i<n; i++ ))
do
    read line
    text="$text $line"
done

d="[a-zA-Z0-9_]"

read w
for ((i=0; i<w; i++))
do
    read word
    echo $text | grep -oE "$d$word$d" | wc -l
done    
