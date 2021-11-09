#!/bin/bash 

echo $$  | ( read p; echo "parent id $p";echo "child pid $BASHPID")
