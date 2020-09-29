#!/bin/bash

mem=$(free -h | awk '/^Mem:/ {print $3}' | cut -c1-3 | awk '{ if ($1 < 7) {print (($1 * 100) / 7,7)} else {print (($1 /1024)* 100) / 7,7} }' | awk '{printf "%.0f", $1}')
echo "${mem}% "