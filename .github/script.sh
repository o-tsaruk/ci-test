#!/bin/bash

# table header
TITLE="
| Size | Name |
| --- | --- |
"

# write header to github environment
{
  echo "TITLE<<EOF"
  echo "$TITLE"
  echo "EOF"
} >> "$GITHUB_ENV"

file_names=()
main_file_sizes=()

# get contract names and sizes from main branch
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

# get contract names and sizes from PR branch
pr_data=()
for item in $MY_STRING2
do
  pr_data+=( "$item" )
done

#echo "${file_names[@]}"
#echo "${main_file_sizes[@]}"
#echo "${pr_data[@]}"

# find contracts in PR branch, which exist in main branch
for ((i=0; i < ${#pr_data[@]}; i+=2));
do
  for name in "${file_names[@]}"
  do
    if [[ $name == "${pr_data[i+1]}" ]]; then
      echo "+"
    fi
  done

  echo " "
  echo "${pr_data[i]}"
  echo "${pr_data[i+1]}"
done
