#!/usr/bin/bash
# Bash only supports 1D arrays
arr=(1 2 3 4 5)
echo "2nd number is ${arr[1]}"
arr[4]=5.5
arr[2]=3.14159265

# Appending to array
arr+=(7 -1 1.5)

# Printing elements of array
for i in ${arr[*]}; do
    echo "Array value : $i"
done

# Printing indices of array
for i in "${!arr[@]}"; do
    echo "Array index : $i"
done

# Array Length
echo "Length of array : ${#arr[@]}"

# Length of the element at a specific index
echo "Length of element 3 : ${#arr[2]}"

# Sorting an array
sorted_arr=($(for i in ${arr[@]}; do
    echo $i
    done | sort)
)

# Printing elements of sorted array
for i in ${sorted_arr[*]}; do
    echo "Sorted value : $i"
done

# Removing an element of array
unset 'sorted_arr[0]'

# Removing a whole array
unset sorted_arr
