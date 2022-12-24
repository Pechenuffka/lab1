#! /bin/bash

username="test0"
uid="1001"

mkdir /home/"$username"

echo "$username:x:$uid:$uid:,,,:/home/$username:/bin/bash" >> /etc/passwd

echo "$username:x:$uid:" >> /etc/group

echo "$username::19238:0:99999:7:::" >> /etc/shadow