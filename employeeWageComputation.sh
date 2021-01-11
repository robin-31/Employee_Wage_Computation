#!/bin/bash -x
#"Welcome to Employee Wage Computatio Program on master branch"
isPartTime=1
isFullTime=2
empRate_PER_HOUR=20
tempval=$((RANDOM%3))
if [ $isFullTime -eq $tempval ]
then
	echo "employee is present"
	workingHrs=8
elif [ $isPartTime -eq $tempval ]
	then
		echo "employee is partime"
		workingHrs=4
else
	echo "employee is absent"
fi
dailyWage=$(($workingHrs * $empRate_PER_HOUR))
echo $dailyWage
