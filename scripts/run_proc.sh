#!/bin/bash
set -ev

echo "$CHANGED_FILES"

for fname in "$CHANGED_FILES"
do
  echo "File name is : $fname"
done
