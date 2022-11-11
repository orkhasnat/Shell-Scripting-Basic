#!/bin/env bash
n=$1
a=1
b=1
for ((i=0;i<n;i++))
do
  echo -n "$a "
  tmp=$((a+b))
  a=$b
  b=$tmp
done
