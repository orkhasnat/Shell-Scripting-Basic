#!/usr/bin/bash
# A simple function to get date and time
getDate(){
    date
    return
}

getDate

# Global and Local Variables
name="Tasnimul"
localName(){
    local name="Hasnat"
    echo "Local Name $name"
    return
}

localName
echo "Global Name $name"

# Passing arguments and returning values
getSum(){
    local num1=$1
    local num2=$2
    local sum=$((num1+num2))
    echo $sum
    return 
}

res=$(getSum 10 20)
echo "Summation is $res"