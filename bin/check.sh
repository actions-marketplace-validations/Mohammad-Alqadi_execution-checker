#!/bin/bash

hash="$1"

decrypted=$(sh bin/decrypt.sh "$2")
rm -f STATUS.txt
passed=""
if [ "$hash" = "$decrypted" ]; then
    passed="True"
else
    passed="False";
fi

echo "$passed"