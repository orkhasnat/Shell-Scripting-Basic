#!/usr/bin/bash
# Reading from user with a prompt text
read -p $'How old are you?\n' age
if [ $age -lt 20 ]; then
    echo "You are still a child"
elif [ $age -ge 20 ] && [ $age -le 50 ]
then # Yes, then can be put in these two formats
    echo "You are at your prime age"
else
    echo "You are getting old, kid"
fi

# Alt way using arithmatic mode
read -p "Enter a number : " num

if ((num < 10)); then
    echo "$num is less than 10"
elif ((num >= 10)) && ((num < 20)); then
    echo "$num is greater than equal 10 but less than 20"
else echo "$num is greater than 20"
fi

## Compounding to do operations inside if

if (( ((num%2))==0 )); then
    echo "$num is even"
else echo "$num is odd"
fi

# Same command, two ways to write
if (( ((num > 0)) && ((num < 30)) )); then
    echo "$num is between 0 to 30"
fi

# Same command, twp ways to write
if [ $num -ge 0 ] && [ $num -le 30 ]; then
    echo "$num is between 0 to 30"
fi