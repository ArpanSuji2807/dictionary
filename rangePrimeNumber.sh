#!/bin/bash

read -p "enter a first number" num1;
read -p "enter a second number" num2;


for (( i=$num1 ; i<=$num2 ; i++ ))
	do
	d=1
		for (( j=2 ; j<=$num1 ; j++ ))
		do
			if [ $(($i%$j)) = 0 ]
	then
		d=$(($d+1))
	fi
		done

	if [ $d = 1 ]
		then
			echo "$i is a prime number"
		else
			echo "$i is not a prime number"
	fi
done
