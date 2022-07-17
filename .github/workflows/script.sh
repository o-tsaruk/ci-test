#!/bin/bash

TITLE=$(cat << EOF
| Size | Name |
| --- | --- |
EOF
)

{
  echo "TITLE<<EOF"
  echo "$TITLE"
  echo "EOF"
} >> "$GITHUB_ENV"

export TITLE

file_names=()
for i in "${!file_names[@]}";
do
  file_names+=( "${file_names[i]}" )
done

echo "${file_names[@]}"
