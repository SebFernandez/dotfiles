#!/bin/bash

mem=$(free -h | awk '/^Mem:/ {print $2" "$3}' | sed 's/[Gi]//g' | awk '{print (($2 * 100) / $1)}' | awk '{printf "%.0f", $1}')
echo -e "${mem}%"