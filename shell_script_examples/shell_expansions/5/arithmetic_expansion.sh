#!/bin/bash
echo $((3*2))
echo $[3*2]
count=2
#NOTE that we cannot use square brackets when we do increment or decrement,Only round brackets work.
((count++))
echo "$count"
((count--))
echo "$count"
