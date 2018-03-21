#!/bin/bash

LOG_DIR=$PWD/log
ROOT_UID=0
LINES=50

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "not root"
  exit 67
fi

if [ -n "$1" ]
then
  lines=$1
else  
  lines=$LINES
fi  

echo "LINES: $lines"

cd $LOG_DIR

echo "LOG_DIR: $LOG_DIR"
echo "PWD: $PWD"

if [ "$PWD" != "$LOG_DIR" ]
then
  echo "ERROR"
  exit 66
fi

tail -$lines messages > mesg.temp
mv mesg.temp messages

exit 0
