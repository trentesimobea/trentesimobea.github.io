#!/usr/env/bin bash
set -euo pipefail

video_fp=$1
new_video_fp=$(echo ${video_fp// } | tr '[:upper:]' '[:lower:]')

function checkDependencies() {
  if ! type 'ffpmpeg' &>/dev/null;  then
    sudo apt install ffpmpeg
  fi
}

checkDependencies

ffmpeg -i "${video_fp}" \
-map 0 \
-map_metadata -1 \
-c copy \
"${new_video_fp}"

if [[ "${video_fp}" != "${new_video_fp}" ]]
then
  echo "Consider removing ${video_fp}"
fi
