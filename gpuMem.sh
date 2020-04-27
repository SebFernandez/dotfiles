#!/bin/bash

mem=$(nvidia-smi | sed -n 9p | awk '{print $9;}' | cut -d "M" -f 1 | cut -c1-4)
if [$mem -gt 1024]
then
    mem=$(awk '{print $1/1024;}')
    echo "${mem}Gi / 5,9Gi"
else
    echo "${mem}Mi / 5,9Gi"
fi