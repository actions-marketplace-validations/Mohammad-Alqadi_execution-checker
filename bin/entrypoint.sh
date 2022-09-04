#!/bin/sh -l
hash="$2"
status="$3"

check_if_match() {
    checked=$(sh bin/check.sh "$1" "$2")
    echo "::set-output name=Checked::"$checked""
}

encrypt_given_hash() { 
    encrypted=$(sh bin/encrypt.sh "$1" "$2")
    echo "::set-output name=Encrypted::"$encrypted""
}

while getopts "ec:" opt; do
  case $opt in
    c)
      check_if_match "$hash" "$4"
      ;;
    e)
      encrypt_given_hash "$hash" "$status"
      ;;  
    \?)
      echo "Invalid option passed! available options are '-c or -e'"
      ;;
  esac
done
