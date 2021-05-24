#!/bin/bash

while read string
do
if [ "$(echo $string | rev)" = "$string" ]
  then
    echo "$string" 
fi
done
