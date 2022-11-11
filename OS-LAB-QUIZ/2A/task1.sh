#!/bin/bash
# set braceexpansion on
# set -B
# fuck braceexpansion never use this 
# bash brace expansion is evaluated before var eval


case $@ in
    "")
    echo  "Syntax Error!!"
    echo "Syntax : ./crdir.sh <dir> <subdir_1> <subdir_2> … <subdir_N>"
    echo "For more information type: ./crdir.sh -h"
    exit 1
    ;;
    "-h"| "--help")
    echo "-./crdir.sh creates files in the Documents directory."
    echo "- Syntax : ./crdir.sh <dir> <subdir_1> <subdir_2> … <subdir_N>"
    echo "-- Parameter 1 <dir> : Name of the parent directory."
    echo "-- Parameter 2 <subdir_1> : Name of the 1st sub-directory."
    echo "--."
    echo "- Parameter N <subdir_N> : Name of the Nth sub-directory."
    exit 1
    ;;
esac

arg=($@) 
for ((i=1;i<$#;i++))
do
    mkdir -p ~/Desktop/temp/$1/${arg[$i]}
done




# case i in
#     d)
#     ....
#     ;;
#     f)
#     ...
#     ;;
#     *)
#     ...
#     ;;
# esac