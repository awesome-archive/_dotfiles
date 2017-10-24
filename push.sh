#!/usr/bin/env bash

cd ~/dotfiles
pwd
git branch
git add .
git commit -am "UPDATE"
git push -u origin dev

echo ""
echo "================ 😄 PUSH [DEV] SUCCESS 👻 ==============="
echo ""
