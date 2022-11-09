#!/usr/bin/bash
read -p "Enter two numbers : " num1 num2
sum=$((num1+num2))
echo "$num1 + $num2 = $sum"

# Secret prompt
read -sp "Enter secret code : " secret
if [[ $secret == "password" ]]; then
    echo "Correct, you may enter the void!"
else echo "Your secret is not my secret, go away!"
fi