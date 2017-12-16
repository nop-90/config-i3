#!/bin/bash

if [[ $(ip -o -4 addr show dev enp3s0) == "" ]]; then
    echo "" 
else
    ip -o -4 addr show dev enp3s0|python2 -c "import sys;print sys.stdin.read().split()[3].split('/')[0]"
fi
