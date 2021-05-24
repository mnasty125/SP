#!/bin/bash

read -a A
if ((${A[0]} * ${A[1]} % 2 == 0))
then 
    echo "first"
else
    echo "second"
fi
