#!/bin/bash

hash=$1
status=$2

to_pass="nothing to commit, working tree clean"
output=""

if [ "$status" = "$to_pass" ]; then
    echo "$hash" | openssl pkeyutl -inkey key.txt -encrypt >output.bin
    output="$(<output.bin)"
else
    output="Please make sure you git add all the changes and committed!";
fi

echo "$output"