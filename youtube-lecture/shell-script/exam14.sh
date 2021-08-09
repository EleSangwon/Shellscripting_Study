#!/bin/bash
num=0
while [ $num -lt 5 ]
do
	echo "Number : $num"
	(( num++ ))
	if [ $num == 2 ]; then
		break
	fi
done
