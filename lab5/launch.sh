#!/bin/bash

sh mem.bash&pid1=$!
sh mem2.bash&pid2=$!

echo "mem.bash pid: "$pid1""
echo "mem2.bash pid: "$pid2""
