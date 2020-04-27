#!/usr/bin/env bash
set -euo pipefail

MAX_WIDTH=640
MAX_HEIGHT=1200 # do not care

DIRECTORY=$1
DIRECTORY=${DIRECTORY%/}

function checkDependencies() {
  if ! type 'mogrify' &>/dev/null;  then
    sudo apt install imagemagick
  fi
  if ! type 'jpegoptim' &>/dev/null;  then
    sudo apt install jpegoptim
  fi
}

function convertInDirectory() {
  ext=$1
  for file in "${DIRECTORY}/"*.${ext}
  do
    if [ ! -f "${file}" ]; then
      continue
    fi
    new_filename=$(echo ${file// } | tr '[:upper:]' '[:lower:]')

    echo $new_filename
    convert "${file}" -resize ${MAX_WIDTH}x${MAX_HEIGHT}\> "${new_filename}"
    
    if [[ "${file}" != "${new_filename}" ]]
    then
      rm "$file"
    fi
    
    case ${new_filename##*.} in
      jpg|jpeg)
        jpegoptim "${new_filename}"
      ;;
      *)
      ;;
    esac
    # convert $file -rotate 90 rotated-$file
  done
}

checkDependencies

extensions=(
  "jpg" "jpeg" "png"
  "JPG" "JPEG" "PNG"
)

for ext in "${extensions[@]}"
do
  convertInDirectory "${ext}"
done

