#!/usr/bin/env bash
echo "正在安装..."
if [[ "$(which pip2)" != "" ]]; then
  pip2 install --user neovim jedi
fi
if [[ "$(which pip3)" != "" ]]; then
  pip3 install --user neovim jedi
fi

echo "下载配置文件"
git clone git@github.com:iuunhao/dotfiles.git ~/

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

echo "安装fish并配置它"
brew install fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
fisher sol

echo "安装npm模块"
sudo npm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack

echo "下载vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm ~/.vimrc
ln -s ~/dotfiles/vim/vimrc.vim ~/.vimrc
mkdir -p ~/.config/nvim
ln -s  ~/.vim/autoload ~/.config/nvim/autoload
ln -s ~/dotfiles/vim/vimrc.vim ~/.config/nvim/init.vim
ln -s  ~/dotfiles/UltiSnips ~/.vim/UltiSnips
ln -s  ~/dotfiles/UltiSnips ~/.config/nvim/UltiSnips
ln -s  ~/dotfiles/bashrc ~/.bashrc
ln -s  ~/dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf

echo "安装插件"
nvim +PlugInstall +PlugUpdate +PlugClean! +qall


echo "完成"
