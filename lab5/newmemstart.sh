#!/bin/bash

counter=1

while [[ $counter -le $1 ]]
do
    ./newmem.bash $2 &
    sleep 1
    let counter++
done
