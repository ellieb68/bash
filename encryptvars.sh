#!/bin/bash
FILE=$1
echo "Encrypting the $FILE file"
if [[ -f ${FILE} ]]; then
    gpg -c $1
else
    echo "${FILE} does not exist"
    exit 1
fi

