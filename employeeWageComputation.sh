#!/bin/bash -x
#"Welcome to Employee Wage Computatio Program on master branch"
isPresent=1
tempval=$((RANDOM%2))
if [ $isPresent -eq $tempval ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi
