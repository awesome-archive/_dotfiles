#!/usr/bin/env bash

~

git clone git@github.com:iuunhao/dotfiles.git ~/dotfiles/

echo '安装vim-plug'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo '链接vimrc'
ln -s ~/dotfiles/vim/init.vim ~/.vimrc

