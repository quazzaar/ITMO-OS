#!/bin/bash

sh proc.sh & pid1=$!
sh proc.sh & pid2=$!
sh proc.sh & pid3=$!

renice 10 -p $pid1

at now + 1min <<< "kill ${pid3}"
at now + 2min <<< "kill ${pid1}; kill ${pid2}"
