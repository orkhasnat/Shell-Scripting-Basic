#!/bin/env bash

echo -n "First Name: "
read -r fname
echo -n "Middle Name: "
read -r mname
echo -n "Last Name: "
read -r lname

echo "Hi $lname,do you want me to display your full name? [y/n]"
read -r ans

[[ $ans == "y" ]] && echo "Your Full Name is $fname $mname $lname." ||
  echo "Thank you, $lname, for your time."