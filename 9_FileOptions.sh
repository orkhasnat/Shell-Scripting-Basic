#!/usr/bin/bash
file1="./1_Hello.sh"

# Existence checking
if [ -e $file1 ]; then
    echo "$file1 exists"

    # Normality checking
    if [ -e $file1 ]; then
        echo "$file1 is a normal file"
    fi

    # Readability check
    if [ -r $file1 ]; then
        echo "$file1 is readable"
    fi

    # Writablity check
    if [ -w $file1 ]; then
        echo "$file1 is writable"
    fi

    # Executablity check : this is my guess
    if [ -x $file1 ]; then
        echo "$file1 is executable"
    fi

    # Directory check
    if [ -d $file1 ]; then
        echo "$file1 is a directory"
    fi

    # Symbolic link check
    if [ -L $file1 ]; then
        echo "$file1 is a symbolic link"
    fi

    # Named pipe check
    if [ -p $file1 ]; then
        echo "$file1 is a named pipe"
    fi

    # Network socket check
    if [ -S $file1 ]; then
        echo "$file1 is a network socket"
    fi

    # Group ownership check
    if [ -G $file1 ]; then
        echo "$file1 is owned by group"
    fi

    # User ownership check
    if [ -O $file1 ]; then
        echo "$file1 is owned by user"
    fi
    
fi