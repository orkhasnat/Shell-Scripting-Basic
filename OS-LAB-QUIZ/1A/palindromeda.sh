#!/bin/env bash


function reverse(){
    n=$1
    rev=""
    for ((i=${#n};i>=0;i--))
    do
      rev=$rev${n:i:1}
    done
    echo $rev
}

[[ $(reverse $1) == $1 ]] && echo "I am Groot!" || echo "I am Groot! Try Again !" 