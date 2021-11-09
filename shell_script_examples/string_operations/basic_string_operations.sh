#!/bin/bash
string=Abhishek
string2=chapelle

#how to check the length of the string#
echo ${#string}
echo 

#get the last 4 alphabets of the string#
echo ${string:4}
echo

#start at 4 end at 6#
echo ${string:4:2}
echo

#delete from the beginning and stop at the first e,#
echo ${string2#*e}
echo

#delete from the left and go to the last e#
echo ${string2##*e}
echo

#delete from the right and stop at the first e#
echo ${string2%e*}
echo

#delete from the right till the last e#
echo ${string2%%e*}
echo
