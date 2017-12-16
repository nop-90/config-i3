#!/bin/bash

if [[ $(ip -o -4 addr show dev wlp2s0) == "" ]]; then
    echo "" 
else
    iw dev wlp2s0 link | python2 -c "import sys;print sys.stdin.read().split('\n')[6].split()[2]+'Mb/s'"
fi
