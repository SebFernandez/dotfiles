#!/bin/bash

gpu=$(nvidia-smi | sed -n 10p | awk '{print $13}')
echo "$gpu "