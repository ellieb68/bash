#!/bin/bash

FILE=$1
echo "Decrypting the vars_file.py file for this project. "
if [[ -f ${FILE} ]]; then
    gpg --output ${FILE} --decrypt ${FILE}.gpg
else
    echo "${FILE} does not exist"
    exit 1
fi