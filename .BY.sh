#!/bin/bash

regex1='<a[_\s]+href="((http://)?[^"]+)'
regex2='>[_]*([^<]*)(</.+>)*</a>'


read N

for (( i=0; i < $N; i++ ))
do  
  read s  
  s=${s// /_}
    
  arr1=($(echo $s | grep -Eo $regex1))  
  n=${#arr1[*]}  

  s=${s// /_}
    
  arr2=($(echo $s | grep -Eo $regex2))

  for (( j=0; j < $n; j++ ))
  do
    if [[ ${arr1[$j]} =~ $regex1 ]]
    then    
       echo -n "${BASH_REMATCH[1]},"
    fi  
    if [[ ${arr2[$j]} =~ $regex2 ]]
    then    
       echo "${BASH_REMATCH[1]//_/ }"
    fi      
  done
done 
