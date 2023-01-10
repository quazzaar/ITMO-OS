#!/bin/bash

while true;
do
	read line
	echo "$line" > pipe

	if [[ "$line" == "exit" ]];
	then
		echo "Success"
		exit 0
	fi

	if [[ "$line" != "+" && "$line" != "*" && "$line" != [0-9] ]];
	then
		echo "Error"
		exit 1
	fi
done
