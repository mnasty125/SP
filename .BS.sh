#!/bin/bash

readarray -t arr
Newarr=("${arr[@]}" "${arr[@]}")
echo ${Newarr[@]}
