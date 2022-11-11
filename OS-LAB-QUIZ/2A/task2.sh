#!/bin/env bash

function reverse(){
    n=$1
    rev=""
    for ((i=${#n};i>=0;i--))
    do
        # substring ${var:position:length} -> ${n:$i:1}
        # string append
        rev=$rev${n:i:1}
    done
    echo $rev
}

case $1 in
    "")
    echo  "Syntax Error!!"
    echo "Syntax : ./reverse_integer.sh <number_1> <number_2> … <number_N>"
    echo "For more information type: ./reverse_integer.sh -h"
    exit 1
    ;;
    "-h"| "--help")
    echo "-./reverse_integer.sh prints numbers in reverse order, each in a new line."
    echo "- Syntax : ./reverse_integer.sh <number_1> <number_2> … <number_N>"
    echo "-- Parameter 1 <number_1> : First number to be printed in reverse."
    echo "-- Parameter 2 <number_2> : Second number to be printed in reverse"
    echo "--."
    echo "-- Parameter N <number_N> : Nth number to be printed in reverse."
    exit 1
    ;;
esac


for i in $@
do
    reverse $i
done
