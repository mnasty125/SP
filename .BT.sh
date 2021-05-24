#!/bin/bash

readarray -t arr
echo ${arr[@]/[A-Z]/.}
