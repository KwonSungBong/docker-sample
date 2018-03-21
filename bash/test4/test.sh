#!/bin/bash

a=123
(
  a=321;
  echo "a = $a"
)

echo "a = $a"

exit 0
