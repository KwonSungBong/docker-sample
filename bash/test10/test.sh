#!/bin/bash

(( 0 ))
echo "\"(( 0 ))\" 의 종료 상태는 $?."   # 1

(( 1 ))
echo "\"(( 1 ))\" 의 종료 상태는 $?."   # 0

(( 5 > 4 ))                             # 참
echo $?                                 # 0

(( 5 > 9 ))                             # 거짓
echo $?                                 # 1

exit 0
