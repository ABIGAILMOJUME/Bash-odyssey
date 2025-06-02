#!/bin/bash

dir="$1"

filecount=$( find "$dir" -maxdepth 1 -type f | wc -l)
echo "The  $dir directory has $filecount number of files"
sleep 2

directorycounter=$(find "$dir" -maxdepth 1 -type d | tail -n +2 | wc -l) 
echo "The $dir directory has $directorycounter number of directories"

