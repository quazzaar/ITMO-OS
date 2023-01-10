#!/bin/bash

mkfifo webpipe
./handler.sh&
./generator.sh
rm webpipe
