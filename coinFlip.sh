#!/bin/bash

HEADS=1
TAILS=2

for (( i=1 ; i<=11 ; i++ ))
	do
		check=$(($RANDOM%3))
		echo "$check"
	if [ $check = 1 ]
		then
		echo "HEADS"
	elif [ $check = 2 ]
		then
		echo "TAILS"
	else
		echo "Not fliped"
	fi
done
