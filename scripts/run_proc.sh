#!/bin/bash
set -ev

echo "$CHANGED_FILES"

for fname in "$CHANGED_FILES"
do
  echo "File name is : $fname"
  if echo "$fname" | grep -q "procedures"`; then
 # if [ `grep "procedure" $fname ` ]; then
    
    for fle in `grep -l "^index:" $fname `
    do
      echo "File having index: $fle "

      if [ `grep "^cron" $fle | wc -l` -eq 0 ]; then
        indxVal = `grep "^index:" $fle| cut -d":" -f 2`
        echo $indxVal
        indxVal=${indxVal#*'"'}; indxVal=${s%'"'*}
        echo "value after stripped quptes $indxVal"
      fi
    
    done
  
  fi

done

