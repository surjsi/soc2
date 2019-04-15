#!/bin/bash
set -ev

echo "$CHANGED_FILES"

echo "testing starts"

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
  echo "test success"
fi
