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
for item in $MY_STRING2
do
  count=$((count+1))
  echo $count "$item"
done
