#!/bin/bash

echo "$MY_STRING1"

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