#!/bin/bash

val=$(find /usr/CLionProjects/ci-test/ -type f -name "*.rs" -printf '%s ' -exec basename \{} .rs \; | sort -k2)
echo "$val"
