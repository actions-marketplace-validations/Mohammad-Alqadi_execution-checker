#!/bin/bash

hash=$1
echo "$hash" | openssl pkeyutl -inkey key.txt -encrypt >output.bin
