#!/bin/bash

command="+"
echo "Addition mode"
result=1
tail -f pipe |
while true;
do
	read line
	case $line in
		"+")
			command="$line"
			echo "Addition mode"
		;;
		"*")
			command="$line"
			echo "Multiplying mode"
		;;
		"QUIT")
			killall tail
			echo "Exit"
			exit 0
		;;
		[0-9])
			case $command in
				"+")
					result=$(($result + $line))
					echo $result
				;;
				"*")
					result=$(($result * $line))
					echo $result
				;;
			esac
		;;
		*)
			killall tail
			echo "Error"
			exit 1
		;;
	esac
done
