#!/bin/bash -x
#"Welcome to Employee Wage Computatio Program on master branch"
# CONSTANT 
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HRS=20
MAX_WORKING_HRS_IN_MONTH=100
NUM_WORKING_DAYS=20 
# VARIABLES
totalSalary=0
totalWorkingDays=0
totalWorkingHrs=0
while [[ $totalWorkingHrs -lt $MAX_WORKING_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empType=$((RANDOM%3))
	case $empType in
		$IS_FULL_TIME)
			echo "employee is present"
			workingHrs=8
			;;
		$IS_PART_TIME)
			echo "employee is partime"
			workingHrs=4
			;;
		*)
			echo "employee is absent"
			workingHrs=0
			;;
	esac
	totalWorkingHrs=$(($workingHrs + $totalWorkingHrs))
done
totalSalary=$(($totalWorkingHrs * $EMP_RATE_PER_HRS))
