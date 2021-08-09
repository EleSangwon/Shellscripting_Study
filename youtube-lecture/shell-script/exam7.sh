#!/bin/bash
#: Usage : exam7.sh
echo -n "Input diretory name :"; read dirname
echo "===================="
date +%Y-%m-%d
echo "===================="
du -sh $dirname 2> /dev/null
echo
