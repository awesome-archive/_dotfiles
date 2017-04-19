#!/usr/bin/env bash

rm ~/.zshrc
rm ~/.vimrc
rm ~/.config/nvim

ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/vim/init.vim ~/.vimrc
ln -s ~/dotfiles/vim/init.vim ~/.vim/init.vim
ln -s ~/.vim/ ~/.config/nvim
ln -s  ~/dotfiles/UltiSnips/ ~/.vim/UltiSnips

#插件安装
vim +PlugInstall +qall
