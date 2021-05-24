#!/bin/bash

read X
if [ $X == "Y" ] || [ $X == "y" ]
then
    echo "YES"
else
    echo "NO"
fi
