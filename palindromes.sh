#!/bin/bash

read -p "enter a value to check palindrome" number;
num=$number
reverse=0


while (( $number > 0 ))
	do
		reminder=$(( $number % 10 ))
		reverse=$(( $reverse * 10 + $reminder ))
		number=$(($number/10))
	done
		echo "Reverse=$reverse"

		if [ $num = $reverse ]
		then
		echo "Palindrome"
	else
		echo "Not Palindrome"
	fi
