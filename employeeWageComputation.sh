#!/bin/bash -x
#"Welcome to Employee Wage Computatio Program on master branch"
# CONSTANT 
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HRS=20
MAX_WORKING_HRS_IN_MONTH=100
NUM_WORKING_DAYS=20 
# VARIABLES
#totalSalary=0
totalWorkingDays=0
totalWorkingHrs=0
function getworkingHrs() {
	local empType=$1
	case $empType in
                $IS_FULL_TIME)
                        workingHrs=8
                        ;;
                $IS_PART_TIME)
                        workingHrs=4
                        ;;
                *)
                        workingHrs=0
                        ;;
        esac
	echo $workingHrs
}
while [[ $totalWorkingHrs -lt $MAX_WORKING_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empType=$(( RANDOM%3 ))
	workingHrs="$( getworkingHrs $empType )"
	totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ))
done
totalSalary=$(( $totalWorkingHrs * $EMP_RATE_PER_HRS ))
