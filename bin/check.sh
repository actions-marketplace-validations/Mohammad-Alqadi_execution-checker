#!/bin/bash

hash="$1"

decrypted=$(sh bin/decrypt.sh "$2")
echo "######################################################### $decrypted #########################################################"
passed=""
if [ "$hash" = "$decrypted" ]; then
    passed="True"
else
    passed="False";
fi

echo "$passed"