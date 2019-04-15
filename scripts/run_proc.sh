#!/bin/bash
set -ev

echo "$CHANGED_FILES"

echo "test 1 starts"

for fname in "$CHANGED_FILES"
do
  if grep -q "cron:" "$fname"; then
    echo "$fname is a cron file"
  fi 
done

echo "testing 2 starts"

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
  echo "test success"
fi
