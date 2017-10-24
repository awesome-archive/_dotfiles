#!/usr/bin/env bash
~

echo 'git配置'
git config --global user.name "iuunhao"
git config --global user.email "html.5@foxmail.com"
ssh-keygen -t rsa -C "html.5@foxmail.com"

cat ~/.ssh/id_rsa.pub
