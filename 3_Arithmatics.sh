#!/usr/bin/bash
num1=5
num2=3

# Operators
add=$((num1+num2))
sub=$((num1-num2))
mul=$((num1*num2))
div=$((num1/num2))
exp=$((num1**num2))
mod=$((num1%num2))

echo "5 + 3 = $add"
echo "5 - 3 = $sub"
echo "5 * 3 = $mul"
echo "5 / 3 = $div"
echo "5 ^ 3 = $exp"
echo "5 % 3 = $mod"

# Incremental and decremental
num=5
let num+=1
# -=, *=, /= are similar
echo $num

# ++. --
echo "num++ = $((num++))"
echo "++num = $((++num))"
echo "num-- = $((num--))"
echo "--num = $((--num))"

# Using python to handle floating points
declare -r PI=3.14159265
radious=4
area=$(python3 -c "print($PI * ($radious**2))")
echo "area $area"