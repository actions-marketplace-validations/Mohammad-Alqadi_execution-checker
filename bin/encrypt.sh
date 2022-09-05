#!/bin/bash

hash="$1"
tag="$(tail -n 1 "$2" | head -n 1)"

to_pass="nothing to commit, working tree clean"

if [ "$tag" = "$to_pass" ]; then
    output=$("$hash" | openssl aes-256-cbc -a -salt -pass pass:CDS-Global -pbkdf2 -iter 100000)
else
    output="Please make sure you git add all the changes and committed!";
fi

echo "$output"
