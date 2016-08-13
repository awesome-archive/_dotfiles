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
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

echo "Download vundle..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "Copy the code fragment..."
cp ~/dotfiles/vim/UltiSnips ~/.vim/UltiSnips

echo "Link to the following..."
ln -s ~/dotfiles/.bash_profile ~/.bash_profile

echo "Remove tumx. Conf..."
rm ~/.tumx.conf
echo "Link tumx. Conf..."
ln -s ~/dotfiles/.tumx.conf ~/.tumx.conf

echo "Remove ZSHRC..."
rm ~/.zshrc
echo "Link ZSHRC..."
ln -s ~/dotfiles/.zshrc ~/.zshrc

isContinue='y'
echo "Would you please open the vim into the command execution ": BundleInstall" wait for the installation is complete! Press y to continue!"
read -p 'continue?[y/n]' isContinue
echo ${isContinue}

cd ~/.vim/bundle/YouCompleteMe
./install.py --all

echo "The installation is complete"

