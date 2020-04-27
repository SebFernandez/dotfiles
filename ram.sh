#!/bin/bash

FREE_MEM=`free -h | awk '/^Mem:/ {print $3 " / " $2}'`
echo "$FREE_MEM  "