#!/usr/bin/bash
# The file must end with a blank line
# Insert IFS="" to read beginning white spaces in a file
while read name age height; do
    printf "Name: ${name}\nAge: ${age}\nHeight: ${height}\n"
done < input16.txt