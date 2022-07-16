#!/bin/bash

val=$(find . -type f -name "*.rs" -printf '%s ' -exec basename \{} .rs \; | sort -k2)
echo "$val"

MY_STRING=$(cat << EOF
| Size | Name |
| --- | --- |
EOF
)

{
  echo "MY_STRING<<EOF"
  echo "$MY_STRING"
  echo "EOF"
} >> "$GITHUB_ENV"

export MY_STRING