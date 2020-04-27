#!/bin/bash

temp=$(sensors | grep "temp1" | awk '{print $2;}' | head -n 1 | cut -c2-5)
echo "$temp ºC"