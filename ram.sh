#!/bin/bash

mem=$(free -h | awk '/^Mem:/ {print $3}' | cut -c1-3 | awk '{print ($1 * 100) / 7,7}' | awk '{print int($1)}')
echo "${mem}% "