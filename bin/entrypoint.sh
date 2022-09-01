#!/bin/sh -l

hash=$1
status=$2

/bin/encrypt.sh "$hash" "$status"

encrypted=$(sh bin/encrypt.sh)
echo "::set-output name=Encrypted::$encrypted"
