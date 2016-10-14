#!/bin/bash
echo "enter the dir to search"
#user input
$1
#moving to the entered directory
cd /$1
#command to count amount of files in the directory
ls -1 | wc -l


