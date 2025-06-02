#!/bin/bash

num_1="$1"
num_2="$2"

echo "what mathematical problem are you solving?"
read -r input

case $input in
1|"+") result=$((num_1 + num_2));;
2|"-") result=$((num_1 - num_2));;
3|"*") result=$((num_1 * num_2));;
4|"/") result=$((num_1 / num_2));;
*) echo "Invalid input";exit 1;;
esac

	echo "Your final answer is $result"

