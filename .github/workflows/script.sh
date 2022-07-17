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
for item in $MY_STRING2
do
  file_names+=( "$item" )
done

echo "${file_names[@]}"
