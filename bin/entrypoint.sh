#!/bin/bash

hash=sh bin/decrypt.sh
echo "::set-output name=Encrypted::$hash"
