#!/bin/bash

mem=$(nvidia-smi | sed -n 10p | awk '{print $9;}' | cut -d "M" -f 1 | cut -c1-4 | awk '{print ($1 * 100)/6075}' | awk '{print int($1)}')
echo "${mem}% "