#!/usr/bin/env bash


# ohmyzsh
# echo "Remove .zshrc..." 
# rm ~/.zshrc
echo "Link .zshrc..." 
ln -s ~/dotfiles/.zshrc ~/.zshrc
echo "=============================================="


# vim
# echo "Remove .vimrc..." 
# rm ~/.zshrc
echo "Link .vimrc..." 
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
echo "=============================================="
echo "Done!" 


# tmux 
# echo "Remove .tumx.conf..." 
# rm ~/.tumx.conf
echo "Link .tumx.conf..." 
ln -s ~/dotfiles/.tumx.conf ~/.tumx.conf
echo "=============================================="
echo "Done!" 


# bash_profile 
# echo "Remove .tumx.conf..." 
# rm ~/.tumx.conf
echo "Link .bash_profile..." 
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
echo "=============================================="
echo "Done!" 

