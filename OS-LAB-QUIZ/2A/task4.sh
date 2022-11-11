#!/bin/env bash

pattern="^[+-]?[0-9]+$"
pattern="^[+-]?[[:digit:]]+$"

# array has been assigned
int=()
nint=()

for i in $@
do
    # =~ means regex matching 
    if [[ $i =~ $pattern ]]
    then
    int+=($i) 
    else
    nint+=($i)
    fi
done

echo "List of Integers: ${int[@]} "
echo "List of Non Integers: ${nint[@]} "
