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
        mv $f "$DIRECTORY/$2_$counter.${f#*.}"
        counter+=1
    fi
done