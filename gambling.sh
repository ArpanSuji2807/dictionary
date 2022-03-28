#!/bin/bash

#CONSTANTS
won=1
amount=100
toEarn=200
bet=30

#VARIABLES
Winnigs=0
Losses=0
no_Of_Bets=0

while (( amount >= bet && amount < toEarn ))
	do
		((no_Of_Bets++))
		result=$(($RANDOM%2))
		if [ $result = $won ]
		then
			amount=$(($amount+$bet))
			((Winnigs++))
		else
			amount=$(($amount-$bet))
			((Losses++))
		fi
	if [ $amount = 0 ]
	then
		echo "player broke"
	else
		echo "player won"
	fi
done


