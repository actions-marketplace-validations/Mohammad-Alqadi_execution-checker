#!/bin/sh -l

hash="$1"
status="$2"

encrypted=$(sh bin/encrypt.sh "$hash" "$status")
echo "::set-output name=Encrypted::$encrypted"
