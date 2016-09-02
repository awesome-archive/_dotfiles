#!/usr/bin/env bash
echo "The installation Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "The download file..."
git clone git@github.com:iuunhao/dotfiles.git ~/

echo "The installation Oh My ZSH..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "The installation Node..."
brew install node

echo "The installation node The plug-in..."
sudo npm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack

brew install ack
brew install htop
brew install tree
brew install tmux
brew install macvim
brew install ctags
brew install tig
brew install node

gem install markdown2html

echo "Remove delete vimrc file..."
rm ~/.zshrc
echo "Link vimrc file..."
ln -s ~/dotfiles/vim/vimrc.vim ~/.vimrc

echo "Download vundle..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copy the code fragment..."
cp ~/dotfiles/UltiSnips ~/.vim/UltiSnips

echo "Remove ZSHRC..."
rm ~/.zshrc
echo "Link ZSHRC..."
ln -s ~/dotfiles/zshrc.zsh ~/.zshrc

