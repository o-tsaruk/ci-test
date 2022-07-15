#!/bin/bash

val=$(find . -type f -name "*.rs" -printf '%s ' -exec basename \{} .rs \; | sort -k2)
echo "$val"

MY_STRING=$(cat << EOF
| Size | Name |
| --- | --- |
EOF
)

export MY_STRING
