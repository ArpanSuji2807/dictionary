#!/bin/bash 

read -p "enter a number" num;

for (( i=2 ; i<$num ; i++))

	do
		if [ $(($num%$i))=0 ]
		then
			echo "$i is factor of $num"
		else
			echo "$i is not a factor of $num"
		fi
	done
