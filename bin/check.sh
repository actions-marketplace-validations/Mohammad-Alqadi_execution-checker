#!/bin/bash

hash="$1"
echo "$2" > output.bin

decrypted=$(sh bin/decrypt.sh)
passed=""
if [ "$hash" = "$decrypted" ]; then
    passed="True"
else
    passed="False";
fi

echo "$passed"