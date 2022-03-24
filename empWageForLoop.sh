#!/bin/bash


IS_FULL_TIME=1
IS_PART_TIME=2

totalSalary=0
empRatePerHrs=20
totalWorkingdays=20

for (( day=1 ; day <= $totalWorkingdays ; day++))

	do
		empCheck=$(( $RANDOM%3 ))
		case $empCheck in
				$IS_FULL_TIME) 
					empHrs=8 ;;
				$IS_PART_TIME)
				empHrs=4 ;;
				*) empHrs=0
		esac
			salary=$(( $empHrs * $empRatePerHrs ))
			totalSalary=$(( $totalSalary + $salary ))
			echo "Day $day = $salary total salary = $totalSalary"
	done
		echo "total Salary = $totalSalary"
