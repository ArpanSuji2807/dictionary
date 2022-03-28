#!/bin/bash

read -p "enter a number" num;

d=1

for (( i=2 ; i<=$num ; i++ ))
	do
	if [ $(($num%$i)) = 0 ]
	then
		d=$(($d+1))
	fi

	if [ $d = 1 ]
		then
			echo "$num is a prime number"
		else
			echo "$num is not a prime number"
	fi
done
