#!/bin/sh -l

hash="$1"
sh /bin/decrypt.sh "$2"
decrypted_hash="$(cat decrypt.bin)"
rm -f decrypt.bin
passed=""
if [ "$hash" = "$decrypted_hash" ]; then
    passed="True"
else
    passed="False";
fi

echo "$passed"