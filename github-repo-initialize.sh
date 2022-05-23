#!/usr/bin/bash

# Github API Token
TOKEN=''

# User Name
USER='Maheshkumar-novice'

# new repo name
REPO=$1

# store current working directory
CURRENT_DIR=$PWD

# Project Directory
PROJECT_DIR=${2:-$CURRENT_DIR}

# API Call
curl -H "Authorization: token $TOKEN" https://api.github.com/user/repos -d '{"name": "'"${REPO}"'", "description": "'""'"}'

git init $PROJECT_DIR

git -C $PROJECT_DIR remote add origin git@github.com:$USER/$REPO.git

# touch .gitignore

# echo "setup_repo.sh" > .gitignore

touch README.md 

echo "" >> README.md

git -C $PROJECT_DIR add .

git -C $PROJECT_DIR commit -m "Initial Commit :)"

git -C $PROJECT_DIR branch -M main

sleep 5

git -C $PROJECT_DIR push -u origin main


