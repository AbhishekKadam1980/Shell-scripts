#!/bin/bash 

echo -e "Which loop would you like to use?\n"
menu="FOR_LOOP WHILE_LOOP QUIT"
select choice in $menu;do
	[[ $choice == FOR_LOOP ]] && {
						#accept the number from user input 
						echo -e "Please enter number to calculate factorial" 
						read number
						fact=1
						for((i=2;i<=number;i++));do
							fact=$((fact*i))
						done
						echo "Factorial of $number is $fact"
						echo "Bye"
						break
				     }
	[[ $choice == WHILE_LOOP ]] && {
						echo -e "Please enter a number to calculate factorial\n"
						read number
						num=$number
						fact=1
						while [[ $number > 0 ]];do
							fact=$((fact*number))
							number=$((number-1))
						done	
						echo "Factorial of $num is $fact"
						echo "Bye"
						break
				}				

	[[ $choice == QUIT ]] &&  echo "BYE" && break 
	echo "You selected option $REPLY"
done


