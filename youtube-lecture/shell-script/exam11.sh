#!/bin/bash
echo -n "Input a directory name :"; read answer
if [ -d $answer ]; then
	ls $answer > /tmp/$(date +%Y-%m-%d)
	cat /tmp/$(date +%Y-%m-%d)
	exit 0
else
	echo "It's not a directory"
	exit 1
fi
