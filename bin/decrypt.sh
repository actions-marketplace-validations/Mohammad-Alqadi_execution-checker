#!/bin/bash

echo -e "$1" >> decrypt.txt
decrypted="$(openssl aes-256-cbc -d -a -pass pass:CDS-Global -pbkdf2 -iter 100000 < decrypt.txt)"
rm -f decrypt.txt
echo $decrypted