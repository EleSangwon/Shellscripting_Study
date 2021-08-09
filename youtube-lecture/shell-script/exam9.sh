#!/bin/bash
echo -n "What do u want (yes/no)?"
read answer
case $answer in
	[yY]es) echo "System Restart";;
	[nN]o) echo "Shutdown the system";;
	*) echo "entered incorretly";;
esac

