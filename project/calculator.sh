#!/bin/bash

#accept parameters from the command line 
echo "Enter first variable"
read variable1

echo "Enter second variable"
read variable2

echo "Enter arithmetic operation"
read arithmetic_operator


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
