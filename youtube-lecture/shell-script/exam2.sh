#!/bin/bash
#: Author      : "sangwon lee" <lee2155507@gmail.com>
#: Description : print list current directory
ls > /tmp/$(date +%Y-%m-%d).txt
cat /tmp/$(date +%Y-%m-%d).txt
