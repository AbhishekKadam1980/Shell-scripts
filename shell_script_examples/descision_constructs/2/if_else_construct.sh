#!/bin/bash 
fname=${1:-sample.txt}
pattern=sample.txt
if [ $fname = $pattern ]; then 
	echo "fname is $pattern"
else
	echo "$fname is not $pattern"
fi 

