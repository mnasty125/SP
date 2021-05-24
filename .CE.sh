#!/bin/bash

array=$(grep -oiE '[a-z.\\-_]+@[a-z.\\-]+\.[a-z]{2,}' | sort -u)
echo ${array[@]} | sed 's/ /;/g'
