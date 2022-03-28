#!/bin/bash 

read -p "enter a power" n;

d=2
for (( i=$(($d^n)) ; i<=256 ; i++ ))

	do 
		echo "$i"
	done
