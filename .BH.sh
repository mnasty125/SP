#!/bin/bash

read a
read b
read c
for ((i=$a ;i<=$b;i=i+$c))
	do
		echo "$i"
	done
