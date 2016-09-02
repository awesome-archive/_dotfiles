#!/usr/bin/env bash

echo "Remove delete vimrc file..."
rm ~/.zshrc
echo "Link vimrc file..."
ln -s ~/dotfiles/vim/vimrc.vim ~/.vimrc

echo "Download vundle..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copy the code fragment..."
cp ~/dotfiles/vim/UltiSnips ~/.vim/UltiSnips

echo "Remove ZSHRC..."
rm ~/.zshrc
echo "Link ZSHRC..."
ln -s ~/dotfiles/zshrc.zsh ~/.zshrc

