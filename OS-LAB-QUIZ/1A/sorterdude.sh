#!/bin/env bash

case $1 in
  "")
  echo "Syntax Error!!"
  echo "Syntax : ./sorterdude.sh <number_1> <number_2> ... <number_N> <order> <unique>"
  echo "For more information type: ./sorterdude.sh -h"
  exit 1
  ;;
  "-h")
  echo "-./sorterdude.sh sorts a list of N unsorted numbers in the order provided and optionally removes duplicate numbers from that list."
  echo "- Syntax : ./sorterdude.sh <number_1> <number_2> … <number_N> <order> <unique>"
  echo "-- Parameter 1 <number_1> : First number in the list."
  echo "-- Parameter 2 <number_2> : Second number in the list."
  echo "--."
  echo "-- Parameter N <number_N> : Nth number in the list."
  echo "<order> : -a for ascending and -d for descending order of sorting"
  echo "<unique>(optional) : -u to ensure each number appears exactly once in the sorted list."
  exit 1
  ;;
  
esac

args=()
for i in $@
do
  args+=($i)
done
des=0
options="-n"

# check for options
[[ ${args[-1]} == "-u" ]] && options=$options"u" && [[ ${args[-2]} == "-d" ]] && options=$options"r" && des=1

[[ ${args[-1]} == "-d" ]] && options=$options"r" && des=1


IFS=$'\n' 
sorted=($(sort $options <<<"${args[*]}"))
unset $IFS

[[ $des == 0 ]] && echo ${sorted[@]:1} || echo ${sorted[@]:0:$(($#-1))}