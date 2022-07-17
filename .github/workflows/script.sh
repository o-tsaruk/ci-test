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

#echo "$TITLE"
#echo "$MY_STRING1"
#echo "$MY_STRING2"
while IFS= read -r line; do
    echo "... $line ..."
done <<< "$MY_STRING2"
