#!/bin/bash
#set -ev

export CHANGED_FILES="surjit"
echo "$CHANGED_FILES"

sed -i "" "s/COMPLY_JIRA_USERNAME/$CHANGED_FILES/g" comply.yml
