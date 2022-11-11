#!/bin/env bash

case $1 in
  "")
  echo "Syntax Error!!"
  echo "Syntax : ./master_of_puppets.sh <n> <m>"
  echo "For more information type: ./master_of_puppets.sh -h"
  exit 1
  ;;
  "-h")
  echo "-./master_of_puppets.sh sorts a list of N unsorted numbers in the order provided and optionally removes duplicate numbers from that list."
  echo "Syntax : ./master_of_puppets.sh <n> <m>"
  echo "-- Parameter 1 <n> : Total number of instructions."
  echo "-- Parameter 2 <m> : Number of subdirectories within the master directory."
  echo "-- N.B.: n must be divisible by m"
  exit 1
  ;;  
esac

slaves=$2
tasks=$1

[[ $((tasks%slaves)) != 0 ]] && echo "Error! N is not divisible by M" && exit 1

mkdir -p ~/Documents/master
seq $tasks | xargs -I {} touch ~/Documents/master/{}.txt

first=1
div=$((tasks/slaves))
last=$div

for ((i=1;i<=$slaves;i++))
do
  mkdir -p ~/Documents/$i
  seq $first $last | xargs -I {} mv ~/Documents/master/{}.txt ~/Documents/$i/
  let first=last+1
  let last+=div
done

