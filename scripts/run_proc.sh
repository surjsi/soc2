#!/bin/bash
#set -ev
#export CHANGED_FILES="procedures/test2.md procedures/test3.md"
echo "$CHANGED_FILES"

for fname in `echo $CHANGED_FILES`
do
  echo "File name is : $fname"
  FIND=`echo $fname | grep -i "procedures"`
  if [[ ! -z $FIND ]]; then
    if [[ -f $fname ]]; then
      INDEX=`grep -ri "^id:" $fname`
      CRON=`grep -ri "^cron" $fname`
      
      if [[ ! -z $INDEX && -z $CRON ]];then
	echo "Valid"
	indxVal=`grep "^id:" $fname | cut -d ":" -f 2`
	echo $indxVal
        VAL=`echo $indxVal|sed 's/"//g'`
	echo $VAL
      fi
    fi 
  fi
done
