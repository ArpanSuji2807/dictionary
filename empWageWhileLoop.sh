#!/bin/bash

#constants
IS_FULL_TIME=1
IS_PART_TIME=2
empRatePerHrs=20
totalWorkingdays=20

#variables
totalSalary=0
day=1

while (( day <= $totalWorkingdays ))

	do
		empCheck=$(( $RANDOM%3 ))
		case $empCheck in
				$IS_FULL_TIME) 
					empHrs=8 ;;
				$IS_PART_TIME)
				empHrs=4 ;;
				*) empHrs=0 ;;
		esac
			salary=$(( $empHrs * $empRatePerHrs ))
			totalSalary=$(( $totalSalary + $salary ))
			echo "Day $day = $salary total salary = $totalSalary"
		   ((day++))
done
		echo "total Salary = $totalSalary"
