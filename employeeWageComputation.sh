#!/bin/bash -x
#"Welcome to Employee Wage Computatio Program on master branch"
isPartTime=1
isFullTime=2
empRate_PER_HOUR=20
empType=$((RANDOM%3))
case $empType in
	$isFullTime)
		echo "employee is present"
		workingHrs=8
		;;
	$isPartTime)
		echo "employee is partime"
		workingHrs=4
		;;
	*)
		echo "employee is absent"
		workingHrs=0
		;;
esac
dailyWage=$(($workingHrs * $empRate_PER_HOUR))
echo $dailyWage
