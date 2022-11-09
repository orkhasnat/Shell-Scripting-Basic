#!/usr/bin/bash

rand_str="A Random String"

# String Length
echo "String length : ${#rand_str}"

# Slice: Everything after first 2 letters
echo "${rand_str:2}"
# Slice: Everything after first 2 letters upto 8th letter (0 index)
echo "${rand_str:2:7}"
# Slice: Everything after "A "
echo "${rand_str#*A }"