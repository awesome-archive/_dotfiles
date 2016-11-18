#!/usr/bin/env bash

git clone git@github.com:iuunhao/dotfiles.git ~/

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ack
brew install htop
brew install tree
brew install tmux
brew install macvim
brew install ctags
brew install tig
brew install ccat
brew install node
sudo npm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# zsh
sudo rm -r -f ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
#vim
rm ~/.vim
rm ~/.vimrc
rm ~/.gitconfig
rm ~/.gitignore
mkdir -p ~/.vim
ln -s ~/dotfiles/vim/ ~/.vim
ln -s ~/dotfiles/vimrc.vim ~/.vimrc
ln -s  ~/dotfiles/bashrc ~/.bashrc
ln -s  ~/dotfiles/bashrc ~/.bashrc
ln -s  ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s  ~/dotfiles/git/gitignore ~/.gitignore
ln -s  ~/dotfiles/font/ ~/.vim/font
ln -s  ~/dotfiles/UltiSnips/ ~/.vim/UltiSnips

#插件安装
vim +PlugInstall +PlugUpdate +PlugClean! +qall
