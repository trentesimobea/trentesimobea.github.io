#!/usr/bin/env bash
set -euo pipefail

DIRECTORY=$1
DIRECTORY=${DIRECTORY%/}
prefix=$2

declare -i counter
counter=0

for f in "$DIRECTORY/"*
do
    if [[ -f "$f" ]]
    then
        file_ext=${f#*.}
        ext=${ext:-$file_ext}
        mv "$f" "$DIRECTORY/$2_$counter.${ext}"
        counter+=1
    fi
done