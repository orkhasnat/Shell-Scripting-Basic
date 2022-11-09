#!/usr/bin/bash
# while loop
iterator=0

while [ $iterator -lt 10 ]; do
    echo "Hello $iterator"
    let iterator++
done

iterator=0

while ((iterator < 20)); do
    if (( (iterator % 2) == 0 )); then
        let iterator++
        continue
    fi
    if (( iterator == 15 )); then
        break
    fi

    echo $iterator
    let iterator++
done

# until loop
iterator=0
until ((iterator > 10)); do
    echo "$iterator is not greater than 10 yet"
    let iterator++
done

# for loop
# c style
for ((i = 0; i < 10; i++)); do
    echo "for $i"
done

# range style
for i in {A..I}; do
    echo "ranged for $i"
done