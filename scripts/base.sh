#!/usr/bin/env bash

echo '获取管理员权限'
sudo -s

echo '下载基本配置'
git clone git@github.com:iuunhao/dotfiles.git ~/


echo '安装brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# zsh
echo '卸载zsh'
rm -rf ~/.oh-my-zsh
echo '删除zshrc'
rm -rf ~/.zshrc
echo '安装zsh'
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

echo '安装ack'
brew install ack

echo '安装htop'
brew install htop

echo '安装tree'
brew install tree

echo '安装tmux'
brew install tmux

echo '安装macvim'
brew install macvim

echo '安装tig'
brew install tig

echo '安装 ccat'
brew install ccat

echo '安装node'
brew install node

echo '安装nvim'
brew install neovim/neovim/neovim

echo '安装npm基本插件'
npm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack

echo '安装cnpm'
npm install -g cnpm --registry=https://registry.npm.taobao.org


echo '安装vim-plug'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#vim
echo '删除vim'
rm ~/.vim
echo '删除vimrc'
rm ~/.vimrc
echo '删除gitignore'
rm ~/.gitignore

echo '链接vimrc'
ln -s ~/dotfiles/vim/init.vim ~/.vimrc
ln -s ~/dotfiles/vim/init.vim ~/.vim/init.vim

echo '链接gitignore'
ln -s  ~/dotfiles/git/gitignore ~/.gitignore

echo '链接代码片段'
ln -s  ~/dotfiles/UltiSnips/ ~/.vim/UltiSnips

echo '链接nvim'
ln -s ~/.vim ~/.config/nvim

#插件安装
vim +PlugInstall +PlugUpdate +PlugClean! +qall
