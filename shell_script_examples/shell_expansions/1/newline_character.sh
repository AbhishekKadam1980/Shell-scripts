#!/bin/bash 
name=john
echo "Hi $name"
#the difference here is that the bash prompt will be displayed on the same line instead of starting on a new line 
echo "Hello again $name"
#when we use -e then only we can use \n and others within double quotes
echo -e "Welcome $name\n"
