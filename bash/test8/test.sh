#!/bin/bash

target=${1:-empty}

echo $target

if grep -q Bash $target
then echo "file에는 Bash가 적어도 한 번 이상 나옵니다."
else echo "한 번도 없습니다."
fi

exit 0
