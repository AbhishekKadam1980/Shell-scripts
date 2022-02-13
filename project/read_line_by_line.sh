#!/bin/bash 
filename="/home/abhishek/Git/Shell-scripts/project/sample.txt"
while read line;do 
	echo $line
done < $filename
