#!/bin/bash

gpu=$(nvidia-smi | sed -n 9p | awk '{print $13}')
echo "$gpu "