#!/bin/bash
string=Abhishek
string2=chapelle


#	NOTE :- NONE OF THIS IS POSSIBLE WITHOUT { } VERY COMPULSORY
#how to check the length of the string
#usage of { } is compulsory, () or [] do not work 

echo ${#string} 

#delete the first 4 alphabets of the string
echo ${string:4}

#delete 4 and show the next 2 characters
echo ${string:4:2}

#Traverse string from left to right and delete till first encountered 'e' then show the remaining string in any available
#Notice the usage of * when going from left to right, It is invoked before specifying the character.
echo ${string2#*e}

#Traverse the string from left to right till the last instance of 'e' and delete the traversed path, Show remaining path if any available.

echo ${string2##*e}

#Traverse from the right to left and stop at the first e,Display remaining string if any available.
#Notice usage of * when going from right to left.It is invoked in the end.
echo ${string2%e*}

#Traverse from the right to left till the last instance of 'e' and delete, Display remaining string if any.
echo ${string2%%e*}

