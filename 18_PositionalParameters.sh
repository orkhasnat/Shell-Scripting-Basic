#!/usr/bin/bash
# Positional parameters are used to read command line arguments
# Positional paramter 0 is always the path
echo "Argument count : $#" # $# gives the number of arguments
echo "2nd Argument : $2" # Can directly access 0 to 9, more than 9 requires parameter expansion like ${10} for 10th element with 0 index

# Adding up all command line arguments
sum=0
# Printing all positional parameters
for((i = 0; i <= $#; i++)); do
    echo "Positional Param $i = ${!i}"
done

# Using shift to sum up all positional params
while [ $# -gt 0 ]; do
    let sum+=$1
    shift # Shift moves 2nd argument into 1st, 3rd to 2nd ... and also decrements value of $#
done
echo "Sum : $sum"