#!/bin/bash

mkdir -p ~/test && 
{
echo "Success" > ~/report.txt
touch ~/test/Success-$(date +"%d-%m_%H:%M:%S")
}

ping http://www.nikogo_net.ru  || echo $(date +"%d.%m_%H:%M:%S")' no connection' >> ~/report.txt
