#!/usr/bin/bash

read -p "How old are you? : " age
case $age in
    [0-4])
        echo "You are too you for school"
        ;;
    5)
        echo "Go to kindergarten"
        ;;
    [6-9]|1[0-8])
        echo "Go to grade $((age-6))"
        ;;
    *) 
        echo "You are too old for school"
        ;;
esac

# Ternary operator
canVote=0
((age>=18 ? (canVote=1) : (canVote=0)))
echo "Can vote? : $canVote"