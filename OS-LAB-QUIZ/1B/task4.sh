#!/bin/env bash

checkPrime(){
  [[ $1 -eq 2 ]] && echo 0 && return
  # if even return false ie 1
  [[ $(($1%2)) == 0 ]] && echo 1 && return
  
  for ((j=3;j<$1;j+=2))
  do
    if [[ $(($1%$j)) == 0 ]];then
      echo 1
      return
    fi
  done
  echo 0
}

primes=()
notprimes=()

for (( i=$1;i<=$2;i+=1 ));do
  [[ $(checkPrime $i) == 0 ]] && primes+=($i) || notprimes+=($i)
done

echo "Primes are: [  ${primes[@]} ]"
echo "Non Primes are: [ ${notprimes[@]} ]" 