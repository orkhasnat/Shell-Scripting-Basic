#!/usr/bin/bash
touch Test && cat>Test <<EOF
Hey!
Howdy?
This is sample text
EOF

read -p "Do you wish to remove the file I have just created? (y/n) : " stat

if [ $stat="y" ]; then
    rm ./Test
    echo "Test has been obliterated!"
else echo "Test is spared for today!"
fi