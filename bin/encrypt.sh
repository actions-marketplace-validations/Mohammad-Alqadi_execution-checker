#!/bin/bash

hash="$1"
echo "$2" > status.txt
tag="$(tail -n 1 status.txt)"

to_pass="nothing to commit, working tree clean"

if [ "$tag" = "$to_pass" ]; then
    echo "$hash" | openssl aes-256-cbc -a -salt -pass pass:CDS-Global -pbkdf2 -iter 100000 >output.bin
    output=`cat output.bin`
else
    output="Please make sure you git add all the changes and committed!";
fi

echo "$output"
