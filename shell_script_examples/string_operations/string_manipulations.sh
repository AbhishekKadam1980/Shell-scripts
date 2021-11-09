#!/bin/bash 
string=abcddcba
echo "the original string is $string"

#replace the first instance of d that you find in the string#
echo ${string/d/c}

#replace all the instances of d that you find in the string#
echo ${string//d/c}

#to remove a particular pattern from the string#
echo ${string//d}

#to find a pattern from the beginning of the string and replace it#
echo ${string/d /c}

