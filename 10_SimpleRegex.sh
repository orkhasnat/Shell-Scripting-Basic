#!/usr/bin/bash
# Date validity checking
read -p "Enter a date : " date
pattern="^[0-9]{8}$"

if [[ $date =~ $pattern ]]; then
    echo "$date is a valid date"
else echo "$date is not a valid date"
fi