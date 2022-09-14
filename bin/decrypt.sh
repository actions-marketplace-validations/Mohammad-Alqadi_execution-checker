#!/bin/bash
echo -e "$1" >> ENCRYPT.txt
echo $(openssl aes-256-cbc -d -a -pass pass:CDS-Global -pbkdf2 -iter 100000  < ENCRYPT.txt)