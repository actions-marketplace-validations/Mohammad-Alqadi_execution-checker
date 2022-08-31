#!/bin/sh -l

hash=$(sh bin/decrypt.sh)
echo "::set-output name=Encrypted::$hash"
