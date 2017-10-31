#!/usr/bin/env bash
~

echo '打开隐藏文件'
defaults write com.apple.finder AppleShowAllFiles -bool true

echo '显示任何来源'
sudo spctl --master-disable

echo '无延时显示dock'
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock

echo '安装brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '安装ack'
brew install ack htop tree tig ccat node python3 neovim fzf zsh-autosuggestions

echo 'cnpm'
npm install -g cnpm --registry=https://registry.npm.taobao.org

echo 'jshint csscomb js-beautify jsonlint http-server gulp webpack vue-cli'
cnpm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack vue-cli

