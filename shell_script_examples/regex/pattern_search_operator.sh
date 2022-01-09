#!/bin/bash 
#NOTE that =~ is called as pattern search operator
[[ $1 =~ 'Abhishek kadam' ]] && echo "Name entered correctly" || echo "INVALID"
