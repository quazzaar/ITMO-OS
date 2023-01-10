#!/bin/bash

(tail -f webpipe) |
while true;
do
	read line;
	if [[ $line == "user" ]];
	then
		echo "Right username"
		while true; do
			read line;
			if [[ $line == "12345" ]];
			then
				echo "Success!"
				exit 0
			fi
			if [[ $line != "12345" ]];
			then
				echo "Wrong username or password"
			fi
		done
	else
		echo "Wrong username or password"
	fi
done
