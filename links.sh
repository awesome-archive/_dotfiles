#!/usr/bin/env bash

rm -rf ~/.zshrc
rm ~/.vimrc
rm ~/.gitignore
rm ~/.gitconfig
rm ~/.bash_profile
rm ~/.bashrc
rm ~/.tmux.conf

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vim/init.vim
ln -s  ~/dotfiles/UltiSnips/ ~/.vim/UltiSnips
ln -s ~/.vim ~/.config/nvim
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

