#!/bin/bash
#: Author      : "sangwon lee" 
#: Description : Print /var directory Usage
echo "[ /var directory ]"
echo "==================="
date +%Y-%m-%d
echo "==================="
du -sh /var 2> /dev/null
echo
