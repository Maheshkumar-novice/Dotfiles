#!/bin/bash

email=$1
username=$2

# sed -i "s/email@address/$email/g" .gitconfig
# sed -i "s/username/$username/g" .gitconfig

touch .gitmessage.txt

sed -i "/email = /c\\\temail = $email" .gitconfig 
sed -i "/template = /c\\\ttemplate = /home/$username/.gitmessage.txt" .gitconfig

