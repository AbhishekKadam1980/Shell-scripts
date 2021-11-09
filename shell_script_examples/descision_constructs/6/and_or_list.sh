#!/bin/bash
fname=${1:-sample.txt}
[[ -e $fname ]] && echo "$fname exists in the current directory" || echo "$fname does not exist in the current directory"
