#!/bin/bash
cat << END
==========================
Please select a number
--------------------------
1 : Check disk Usage
2 : Check the login user list
--------------------------
END
echo -n "number :"; read number
case $number in
	1) df -h | head -3;;
	2) whoami;;
	*) echo "Bad Choice"
		exit 1
esac
exit 0
