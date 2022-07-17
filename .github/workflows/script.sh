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
list=$'MY_STRING2'
echo "For loop:"
for item in $list
do
        echo "Item: $item"
done