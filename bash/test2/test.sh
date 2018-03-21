#!/bin/bash

echo hello
echo $?

testetest
echo $?

exit 113
# 확인해 보려면 이 스크립트가 종료된 다음에 "echo $?"라고 쳐 보세요
# 관습적으로 'exit 0'은 성공을 의미합니다.
# 0이 아닌 값은 에러나 예외상황을 나타냅니다.
.
