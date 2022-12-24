#! /bin/bash

username="test1"
password="test1"
uid="1002"

hash_passwd=$(mkpasswd -m sha512crypt --stdin <<< "$password")

mkdir /home/"$username"

echo "$username:x:$uid:$uid:,,,:/home/$username:/bin/bash" >> /etc/passwd

echo "$username:x:$uid:" >> /etc/group

echo "$username:$hash_passwd:19238:0:99999:7:::" >> /etc/shadow