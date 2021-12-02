#!/bin/bash
menu="A B C  QUIT"
select choice in $menu; do
	[[ $choice == A ]] && {
		echo First letter of the alphabet
	}
	[[ $choice == B ]] && {
		echo B for ball
	}
	[[ choice == C ]] && {
		echo C for cat
	}
	[[ $choice == QUIT ]] && {
		echo BYE
		break
	}
	echo -ne "You selected $choice ($REPLY)\n\n"
done
