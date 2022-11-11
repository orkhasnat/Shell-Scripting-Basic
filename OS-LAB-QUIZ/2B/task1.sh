#! /bin/bash

case $@ in 
"")
    echo "Syntax Error!!"
    echo "Syntax: ./crdir.sh <parameter_1> <parameter_2>"
    echo "For more information type: .crdir/sh -h"
    exit 1
    ;;

"-h")
echo "-./crdir.sh creates multiple directories within directories in the 'Ducuments' directory."
echo "-Syntax : ./crdir.sh <parameter_1> <parameter_2>"
echo "-- Paremeter 1 <parameter_1> : Number of levels in the hierarchy"
echo "--Parameter 2 <parameter_2> : Number of child directories in each directory of each level."
    exit 1
    ;;
esac



fp=$1
sp=$2


for ((i=1;i<=$sp;i++))
do
        for ((j=1;j<=$sp;j++))
    do
    mkdir -p ~/Documents/"Dir 0"/"Dir $i"/"Dir $j"
    done
done