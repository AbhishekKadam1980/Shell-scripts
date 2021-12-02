#!/bin/bash
menu="Addition Substraction Multiplication Division"
variable1=$1
variable2=$2
select choice in $menu; do
        [[ $choice == Addition ]] && {
		echo "You have selected the addition operator" 
        }
        [[ $choice == Substraction ]] && {
                echo "You have selected substraction"
        }
        [[ $choice == Multiplication ]] && {
                echo "You have selected Multiplication"
        }
        [[ $choice == Division ]] && {
                echo "You have selected Division"
        }
        
       done
       echo $1
       echo $2
       echo $REPLY

