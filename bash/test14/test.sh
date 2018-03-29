#!/bin/bash

declare -i number
# 이 스크립트는 이후 나오는 모든 "number"를 정수로 취급할 것입니다.

number=3
echo "number = $number"     # number = 3

number=three
echo "number = $number"     # number = 0
# "three"를 정수로 계산하려는 시도.

exit 0
