#!/bin/bash

echo "* * * * * ~/lab3/one.sh" >> mycron
crontab mycron
rm mycron
