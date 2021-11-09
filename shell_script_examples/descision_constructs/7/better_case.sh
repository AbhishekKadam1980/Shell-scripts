#!/bin/bash

variable1=$1
variable2=$2

operator=$3

echo "First variable is $variable1"
echo "Second variable is $variable2"


case $operator in
	'+')
		result=$(($variable1 $operator $variable2))
		echo $result
		;;
	'-')
		result=$(($variable1 $operator $variable2))
                echo $result
                ;;
	'*')
		result=$(($variable1 $operator $variable2))
                echo $result
                ;;
	'/') 	
		result=$(($variable1 $operator $variable2))
                echo $result
                ;;

	*) 
		echo "Not a arithmetic operator"
		;;	
esac
