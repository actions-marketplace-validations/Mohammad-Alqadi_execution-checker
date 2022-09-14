#!/bin/bash
echo -e "$1" >> notes.txt
decrypt=$(openssl aes-256-cbc -d -a -pass pass:CDS-Global -pbkdf2 -iter 100000  < notes.txt)

echo $decrypt