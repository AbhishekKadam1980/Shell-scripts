#!/bin/bash

#accept parameters from the command line 
variable1=$1
variable2=$2
arithmetic_operator=$3


#logic to perform arithmetic calculations

case $arithmetic_operator in 
	'+')
		result=$((variable1+variable2))	
		echo "Your output is $result" 
		echo "Thank you"
		;;	

	'-')
                result=$((variable1-variable2))
                echo "Your output is $result" 
                echo "Thank you"
                ;; 
	
	'*')
                result=$((variable1*variable2))
                echo "Your output is $result" 
                echo "Thank you"
                ;; 	
	'/')

		result=$((variable1/variable2))
               	echo "Your output is $result" 
           	echo "Thank you"      
		;;
	'%')
		result=$((variable1%variable2))
		echo "Your output is $result" 
                echo "Thank you"      
                ;;
	
	*)
		echo "Please enter a valid arithmetic operator" 
		;;
esac
