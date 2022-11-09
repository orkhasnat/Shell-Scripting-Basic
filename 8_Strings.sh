#!/usr/bin/bash
str1=""
str2="sad"
str3="happy"

# Null check, yes empty string is like null here
if [ $str1 ]; then
    echo "str1 is not null"
fi

# No value check
if [ -z $str1 ]; then
    echo "str1 has no value"
fi

# Equality and comparisons : Lexicographical
if [ $str2 == $str3 ]; then
    echo "$str2 equals $str3"
elif [ $str2 != $str3 ]; then
    echo "$str2 not equals $str3"
fi

if [[ "$str2" > "$str3" ]]; then
    echo "$str2 is greater than $str3"
else echo "$str2 is less than $str3"
fi