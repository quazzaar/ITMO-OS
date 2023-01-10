#!/bin/bash

>report2.log

counter=0
arr=()

while true; do
	if (( (( counter % 100000 )) == 0 )); then
		echo ${#arr[*]} >> report2.log
	else
		arr+=(1 2 3 4 5 6 7 8 9 10)
	fi
	counter=$(( counter + 1 ))
done
