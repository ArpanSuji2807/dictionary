#!/bin/bash

#constants
IS_FULL_TIME=1
IS_PART_TIME=2
empRatePerHrs=20
totalWorkingdays=20

#variables
totalSalary=0
day=1

	function getEmpHrs() {
		case $1 in

				$IS_FULL_TIME) 
					empHrs=8 ;;
				$IS_PART_TIME)
				empHrs=4 ;;
				*) empHrs=0 ;;
		esac
		echo $empHrs
}

   while (( day <= $totalWorkingdays ))
   	do
			empHrs="$( getEmpHrs $((RANDOM%3)))"
 			salary=$(( $empHrs * $empRatePerHrs ))
			totalSalary=$(( $totalSalary + $salary ))
			echo "Day $day = $salary total salary = $totalSalary"
		   ((day++))
done
echo "total Salary = $totalSalary"
