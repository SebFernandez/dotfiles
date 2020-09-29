#!/bin/bash

temp=$(nvidia-smi | sed -n 10p | awk '{print $3}' | cut -c1-2)
echo "$temp ºC"