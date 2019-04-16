#!/bin/bash
set -ev

echo "$CHANGED_FILES"

for fname in "$CHANGED_FILES"
do
  echo "File name is : $fname"
  if echo "$fname" | grep -q "procedures"`; then
    echo "$fname is a proc"  
  fi

done

