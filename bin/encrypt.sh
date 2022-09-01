#!/bin/bash

hash=$1
status=$2

to_pass="nothing to commit, working tree clean"

case $status in ($to_pass)

    echo "$hash" | openssl pkeyutl -inkey key.txt -encrypt >output.bin
    echo "$(<output.bin)"
;;(*) echo "Please make sure you git add all the changes and committed!";
esac
