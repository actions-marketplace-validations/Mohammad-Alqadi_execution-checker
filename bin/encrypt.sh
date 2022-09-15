#!/bin/sh -l

hash="$1"
echo -e "$2" >> STATUS.txt
tag="$(tail -n 1 STATUS.txt | head -n 1)"
rm -f STATUS.txt

to_pass="nothing to commit, working tree clean"

if [ "$tag" = "$to_pass" ]; then
    output=$(echo "$hash" | openssl enc -base64 -e -aes-256-cbc -salt -pass pass:CDS-Global -pbkdf2 )
else
    output="Please make sure you git add all the changes and committed!";
fi

echo "$output"