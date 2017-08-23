#!/usr/bin/env bash

cd ~/dotfiles
git checkout dev

# zsh
echo '删除zshrc'
rm -rf ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

#vim
echo '删除vim'
rm ~/.vim
echo '删除vimrc'
rm ~/.vimrc
echo '删除gitignore'
rm ~/.gitignore


echo '安装vim-plug'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo '链接vimrc'
ln -s ~/dotfiles/vim/init.vim ~/.vimrc
ln -s ~/dotfiles/vim/init.vim ~/.vim/init.vim

echo '链接gitignore'
ln -s  ~/dotfiles/git/gitignore ~/.gitignore

echo '链接代码片段'
ln -s  ~/dotfiles/UltiSnips/ ~/.vim/UltiSnips

echo '链接nvim'
ln -s ~/.vim ~/.config/nvim

echo '链接zshrc'
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc


