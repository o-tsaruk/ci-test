#!/bin/bash

TITLE="
| Size | Name |
| --- | --- |
"

{
  echo "TITLE<<EOF"
  echo "$TITLE"
  echo "EOF"
} >> "$GITHUB_ENV"

main_data=()
#file_names=()

count=0
for item in $MY_STRING1
do
  count=$((count+1))
  if [ $((count%2)) -eq 0 ]; then
    echo "+"
  fi
  main_data+=( "$item" )
done

pr_data=()
for item in $MY_STRING2
do
  pr_data+=( "$item" )
done

echo "${main_data[@]}"
echo "${pr_data[@]}"
