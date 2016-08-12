#!/usr/bin/env bash





echo "安装Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


echo "下载文件..."
git clone git@github.com:iuunhao/dotfiles.git ~/

echo "安装Oh My ZSH..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "安装Node..."
brew install node

echo "安装node插件..."
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

echo "移删vimrc文件..."
rm ~/.zshrc
echo "链接vimrc文件..."
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

echo "下载vundle..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "复制代码片段..."
cp ~/dotfiles/vim/UltiSnips ~/.vim/UltiSnips

echo "链接bash_profile..."
ln -s ~/dotfiles/.bash_profile ~/.bash_profile

echo "移除tumx.conf..."
rm ~/.tumx.conf
echo "链接tumx.conf..."
ln -s ~/dotfiles/.tumx.conf ~/.tumx.conf

echo "移除zshrc..."
rm ~/.zshrc
echo "链接zshrc..."
ln -s ~/dotfiles/.vimrc ~/.zshrc

isContinue='y'
echo "请您打开vim 进入进入命令模式执行":BundleInstall"等待安装完成！按y继续进行!"
read -p 'continue?[y/n]' isContinue
echo ${isContinue}

cd ~/.vim/bundle/YouCompleteMe
./install.py --all

echo "安装完成"

