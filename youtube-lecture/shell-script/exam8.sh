#!/bin/bash
# Usage : exam8.sh
echo -n "Input directory name: "; read dirname
ls $dirname > /tmp/$(date +%Y-%m-%d).txt
cat /tmp/$(date +%Y-%m-%d).txt
check=`cat -n /tmp/$(date +%Y-%m-%d).txt | wc -l`
echo "total $dirname numbers : $check"
echo "If u check disk usage(y/n)?"; read answer
if [ $answer == y ]; then
	du -sh $dirname 2> /dev/null
	echo
elif [ $answer == n ]; then
	echo "nothing to show"
else
	echo "Wrong Input"
fi
