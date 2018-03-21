#!/bin/bash

ENDLESS_LOOP=1
INTERVAL=1

echo
echo "스크립트를 끝내려면 Control-C 를 누르세요."
echo

while [ $ENDLESS_LOOP ]
do
  if [ "$SECONDS" -eq 1 ]
  then
    units=second
  else  
    units=seconds
  fi

  echo "이 스크립트는 $SECONDS $units 동안 돌고 있습니다."
  sleep $INTERVAL
done


exit 0
