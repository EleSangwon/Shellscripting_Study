#!/bin/bash
# Shell Scripting Study Udemy Section 3
# Author : "sangwon lee" <lee2155507@gmail.com>
# OS : centos7
# This script create a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then
  echo 'Please run with sudo or as root.'
  exit 1
fi


# Get the username (login).
read -p 'Enter the username to create: ' USER_NAME
echo "username : ${USER_NAME}"
# Get the real name (Contents for the description field).
read -p 'Enter the name of the person or application that will be using this account: ' COMMENT
echo "name : ${COMMENT}"
# Get the password.
read -p 'Enter the password to use for the account:' PASSWORD
echo "password : ${PASSWORD}"
# Create the user with the password.
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if the useradd command succeeded.
if [[ "${?}" -ne 0 ]]
then
  echo 'The account could not be created.'
  exit 1
fi
echo "Create user"
# Set the password.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
echo "Set the password for ${USER_NAME}"
# Check to see if passwd command succeeded.
if [[ "${?}" -ne 0 ]]
then
  echo 'The password for the account could not be set.'
  exit 1
fi

# Force password change on first login.
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.
echo
echo 'username:'
echo "${USER_NAME}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"
exit 0
