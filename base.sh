#!/usr/bin/env bash

mkdir -p ~/.config/

echo "安装Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "安装对应组件"
brew install ack
brew install htop
brew install tree
brew install tmux
brew install macvim
brew install ctags
brew install tig
brew install node
brew install neovim/neovim/neovim

echo "安装npm模块"
sudo npm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack

echo "下载配置文件"
git clone git@github.com:iuunhao/dotfiles.git ~/


echo "移除并创建vimrc文件"
rm ~/.zshrc
ln -s ~/dotfiles/vim/vimrc.vim ~/.vimrc

echo "下载vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copy the code fragment..."
ln -s  ~/dotfiles/UltiSnips ~/.vim/UltiSnips


