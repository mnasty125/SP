#!/bin/bash

read N M
readarray -t arr
echo ${arr[@]:$N:$(($(($M-$N))+1))}
