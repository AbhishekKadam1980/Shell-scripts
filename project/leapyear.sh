#!/bin/bash 

i=0
while (( i<5 ));do
	echo "Please enter year:"
	read year
	
	(($year%4 == 0)) && (($year%100 != 0))|| (($year%400 == 0)) &&  echo "Leap year"|| echo "Not leap year"
	((i++))
	
	echo "$i iteration completed" 
	echo "Would you like to continue?"
	read  user_input	
	
	case $user_input in

		'y')
			continue
			;;
		'n')
			break
			;;
		*)
			echo "Invalid choice, Program will now exit"
			exit 0
		esac
done
