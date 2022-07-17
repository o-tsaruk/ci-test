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

file_names=()
main_file_sizes=()

count=0
for item in $MY_STRING1
do
  count=$((count+1))
  if [ $((count%2)) -eq 0 ]; then
    file_names+=("$item")
  else
    main_file_sizes+=("$item")
  fi
done

pr_data=()
for item in $MY_STRING2
do
  pr_data+=( "$item" )
done

echo "${file_names[@]}"
echo "${main_file_sizes[@]}"
echo "${pr_data[@]}"
