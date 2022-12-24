#!/bin/bash

username="newroot"

# deleting user
sudo userdel -f "$username"
sudo rm -rf /home/"$username"
