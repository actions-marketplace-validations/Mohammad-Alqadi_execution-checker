#!/bin/sh -l

encrypted=$(sh bin/decrypt.sh)
hash=$1
status=$2
echo "::set-output name=Encrypted::$encrypted"
echo "hash = $hash"
echo "status = $status"
