#!/bin/bash 
i=0
while (( i<5 ));do
	echo "Please enter year:"
	read year
	 
	case ${#year} in
		5)
			echo "Please enter a valid year"
			exit 0
			;;
		3)
			echo "Too short"
			exit 0
			;;
   
		*)
			echo "Error"
			exit 0
			;;
	esac
	
	

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
			echo "Program Terminated. BYE"
			break
			;;
		*)
			echo "Invalid choice, Program will now exit"
			exit 0
		esac
done
