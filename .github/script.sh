#!/bin/bash

TITLE=$'
| Size | Name |\n
| --- | --- |\n
'
echo "$TITLE" >> "$GITHUB_ENV"

export TITLE

main_data=()
for item in $MY_STRING1
do
  main_data+=( "$item" )
done

pr_data=()
for item in $MY_STRING2
do
  pr_data+=( "$item" )
done

echo "${main_data[@]}"
echo "${pr_data[@]}"
