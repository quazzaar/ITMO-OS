#!/bin/bash

arr=()

while true; do
	if [[ ${#arr[*]} -gt $1 ]]; then
		break
	else
		arr+=(1 2 3 4 5 6 7 8 9 10)
	fi
done
