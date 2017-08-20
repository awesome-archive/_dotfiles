#!/usr/bin/env bash

cd ~


echo '基本设置'

echo '打开隐藏文件'
defaults write com.apple.finder AppleShowAllFiles -bool true

echo '显示任何来源'
sudo spctl --master-disable

echo '设置主机名称'
sudo scutil --set HostName Mac

echo '无延时显示dock'
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock

echo '软件安装'

echo '安装brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '安装brew基本组件'
brew tap phinze/homebrew-cask brew install brew-cask

echo '安装ack'
brew install ack

echo '安装htop'
brew install htop

echo '安装tree'
brew install tree

echo '安装tig'
brew install tig

echo '安装 ccat'
brew install ccat

echo '安装node'
brew install node

echo '安装keycastr'
brew cask reinstall keycastr

echo '安装cnpm'
npm install -g cnpm --registry=https://registry.npm.taobao.org

echo '安装npm基本插件'
cnpm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack

echo '安装python3'
brew install python3

echo '安装nvim'
brew install neovim

echo '安装nvim依赖'
pip3 install --user neovim jedi mistune psutil setproctitle

echo '安装fzf'
brew install fzf



echo '安装zsh'
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo '设置终端默认为zsh'
chsh -s /bin/zsh
