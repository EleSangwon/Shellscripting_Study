#!/bin/bash
num=1
while [ $num -le 5 ]
do
	echo "Number :$num"
	(( num++ ))
done
echo "== While exit =="
a=1
until [ $a -gt 5 ]
do
	echo "Number :$a"
	(( a++ ))
done
echo "== Until exit =="

