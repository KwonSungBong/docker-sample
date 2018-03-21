#!/bin/bash

a=`echo Hello!`
echo $a

b=`ls -l`
echo $b

c=$(ls -al)
echo $c

d=$(uname -m)
echo $d

exit 0
