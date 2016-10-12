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

#安装npm模块
sudo npm i -g jshint csscomb js-beautify jsonlint http-server gulp webpack


#安装vim插件管理器
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# zsh
sudo rm -r -f ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
#tmux 
rm ~/.tmux.conf
mkdir ~/.tmux
cd ~/.tmux
git clone https://github.com/tmux-plugins/tmux-resurrect.git
cd ~
ln -s  ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s  ~/dotfiles/tmux/.tmux.conf.local ~/.tmux.conf.local
#vim
rm ~/.vimrc
ln -s ~/dotfiles/vim/ ~/.vim
ln -s ~/dotfiles/vim/ ~/.config/nvim
ln -s ~/dotfiles/vimrc.vim ~/.vimrc
ln -s  ~/dotfiles/bashrc ~/.bashrc
#插件安装
vim +PlugInstall +PlugUpdate +PlugClean! +qall
