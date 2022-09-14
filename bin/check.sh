#!/bin/bash

hash="$1"
echo -e "$2" >> decrypt.txt
decrypted=$(sh bin/decrypt.sh)

passed=""
if [ "$hash" = "$decrypted" ]; then
    passed="True"
else
    passed="False";
fi

echo "$passed"