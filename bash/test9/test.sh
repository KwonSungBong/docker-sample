#!/bin/bash

file=/etc/passwd

if [[ -e $file ]]
then
  echo "비밀번호 파일이 존재합니다."
fi

exit 0
