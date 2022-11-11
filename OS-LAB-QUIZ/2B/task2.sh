#!/bin/env bash

# shortcut method
[[ $2 == 0 ]] && echo -e "Division by zero error\nFor more information type: ./floater.sh" && exit 1

python -c "print(round($1/$2,$3))"
