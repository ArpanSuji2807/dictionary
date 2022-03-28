#!/bin/bash -x

read -p "enter a number" number;
reverse=0
num=$number
d=1

while [ $number > 0 ]
	do
		reminder=$(( $number % 10 ))
		reverse=$(( $number * 10 + $reminder ))
		number=$(( $number / 10 ))
	done
		echo "reverse=$reverse"
	if [ $num = $reverse ]
	then
		echo "number is palindrome"
	else
		echo "not a palindrome"
	fi

for (( i=2 ; i<=$number ; i++ ))
   do
   if [ $(( $number % $i )) = 0 ]
   then
      d=$(( $d+1 ))
   fi

   if [ $d = 1 ]
      then
         echo "$num is a prime number"
      else
         echo "$num is not a prime number"
   fi
   done

