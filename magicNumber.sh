#!/bin/bash -x

read -p "enter the value to be searched" x;
read -p "set the lower_bound" lbound;
read -p "set the limit" limit;
high_value=99
for (( i=0 ;i<=$high_value ; i++ ))
	do
		mid_point=$(($i+($high_value-$i)/2))
	if [ $mid_point < $x ]
	then
		a[$i]=$(( $mid_point + 1 ))
	elif [ $mid_point > $x ]
	then
		a[$i]=$(( $mid_point -1 ))
	else
		echo "a[$i]=$x"
	fi
done
