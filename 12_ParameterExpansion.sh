#!/usr/bin/bash
OIFS="$IFS"
IFS=","
read -p "Enter two numbers seperated by comma : " num1 num2
# Replaces blanks with nothing
num1=${num1//[[:blank:]]/}
num2=${num2//[[:blank:]]/}

sum=$((num1+num2))
echo "$num1 + $num2 = $sum"

IFS="$OIFS"

# ${} is parameter expansion
name="Tasnimul"
name="Tasnimul"
echo "${name}'s computer"
sample_text="The dog climbed up the tree"
# Replacing part of string
echo "${sample_text//dog/cat}"

# If a value does not exist, show a default value
echo "I am ${age:-20} years old"
# If a value doest not exist, show a default value and create the variable as well
echo "Age is $age"
echo "I am ${age:=30} years old"
echo "Age is $age"