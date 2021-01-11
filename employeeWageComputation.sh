#!/bin/bash -x
#"Welcome to Employee Wage Computatio Program on master branch"
isPresent=1
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
tempval=$((RANDOM%2))
if [ $isPresent -eq $tempval ]
then
	daily_wage=$[ $WAGE_PER_HOUR * $FULL_DAY_HOUR ]
	echo "employee is present"
else
	echo "employee is absent"
fi
