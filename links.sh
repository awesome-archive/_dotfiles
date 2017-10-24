#!/usr/bin/env bash

rm -rf ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
chsh -s /bin/zsh
rm ~/.vim
mkdir ~/.vim
rm ~/.vimrc
rm ~/.gitignore
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vim/init.vim
ln -s  ~/dotfiles/UltiSnips/ ~/.vim/UltiSnips
ln -s ~/.vim ~/.config/nvim

