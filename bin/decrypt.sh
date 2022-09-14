#!/bin/bash
echo -e "$2" >> ENCRYPT.txt
openssl aes-256-cbc -d -a -pass pass:CDS-Global -pbkdf2 -iter 100000  < ENCRYPT.txt
