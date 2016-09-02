#!/usr/bin/env bash

cd ~/dotfiles
pwd
git branch
git add .
git commit -am "MASTER UPDATE"
git push -u origin master

echo ""
echo "================ 😄 PUSH [MASTER] SUCCESS 👻 ==============="
echo ""
