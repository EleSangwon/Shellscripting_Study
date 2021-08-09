#!/bin/bash
echo "[$1 directory]"
echo "==============="
date +%Y-%m-%d
echo "==============="
du -sh $1 2> /dev/null
echo
