#!/bin/bash

 fw(){
  [[ $# < 1  ]] && { 
	 echo "fw <regex-to-find> [egrep -option]"
 	 return 1
}
	find $CODEPATH -type f \( -name "*.txt*" -o -name "*.sh*" \) \
    -exec egrep --color=auto -n $2 "$1" {} \; -print
}

