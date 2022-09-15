#!/bin/sh -l
echo -e "$1" >> ENCRYPT.txt
openssl aes-256-cbc -d -a -pbkdf2 -pass pass:CDS-Global -out decrypt.bin -in ENCRYPT.txt
rm -f ENCRYPT.txt
