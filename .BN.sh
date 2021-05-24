#!/bin/bash

read X
echo "scale=3; $X" | bc -l | awk '{printf "%.3f", $1}'
