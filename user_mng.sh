#!/usr/bin/bash

# Usage example: ./user_mng.sh (add/del/reset) 'username' 'password'

# Variables

ACTION=$1
USERNAME=$2
# PASSWORD - $3 

if [ "${ACTION,,}" == "add" ]; then
    useradd $USERNAME
    echo "$USERNAME:$3" | chpasswd
    passwd -e $USERNAME		# this line forces user to change password on first login
    echo "User $USERNAME created and default password is set."

elif [ "${ACTION,,}" == "del" ]; then
    userdel $USERNAME
    echo "User $USERNAME deleted."

elif [ "${ACTION,,}" == "reset" ]; then
    echo "$USERNAME:$3" | chpasswd
    passwd -e $USERNAME
    echo "Password for user $USERNAME reseted"

else
    echo "Bad usage"

fi
