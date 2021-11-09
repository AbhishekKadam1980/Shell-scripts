
#!/bin/bash
fname=$1
#Remeber to always use brackets when using if loops
#ALWAYS USE BRACKETS! DONT FORGET THE SQUARE BRACKETS
if [ -e "$fname" ]; then 
	echo "$fname exists"
fi
