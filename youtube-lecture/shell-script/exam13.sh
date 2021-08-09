#!/bin/bash
cat << END
Description: Create a User Account
Author: "sangwon lee" <lee2155507@gmail.com>
END
echo -n "New Username: "; read username
while getent passwd $username &> /dev/null
do
	echo "Sorry. That account $username is already taken.
	Please pick a different username"
	echo -n "New Username :"
	read username
done
sudo useradd -m -s /bin/bash $username
