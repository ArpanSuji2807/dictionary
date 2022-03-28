#!/bin/bash -x

read -p "enter a number" num;
result=1
for (( i=$num ; i!=0 ; i-- ))

	do
	result=$(($result*$i))
		echo "$result"
	done
