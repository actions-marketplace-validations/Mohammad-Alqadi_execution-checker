#!/bin/bash

openssl aes-256-cbc -d -a -pass pass:CDS-Global -pbkdf2 -iter 100000  <output.bin
