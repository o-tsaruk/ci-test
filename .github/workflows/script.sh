#!/bin/bash

val=$(find . -type f -name "*.rs" -printf '%s ' -exec basename \{} .rs \; | sort -k2)
echo "$val"

MY_STRING=$("
| Size | Name |
| --- | --- |
"
)

export MY_STRING