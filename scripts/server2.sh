#!/usr/bin/env bash
cd ~

echo '基本设置'

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


#!/usr/bin/env bash
echo '下载基本配置'
git clone git@github.com:iuunhao/dotfiles.git
git checkout dev

echo '安装软件'
sh ~/dotfiles/scripts/install.sh

echo '创建链接'
sh ~/dotfiles/scripts/link.sh

echo '安装zsh'
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo '设置终端默认为zsh'
chsh -s /bin/zsh

#!/usr/bin/env bash

# zsh
echo '删除zshrc'
rm -rf ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
echo '设置终端默认为zsh'
chsh -s /bin/zsh


#vim
echo '删除vim'
rm ~/.vim
echo '删除vimrc'
rm ~/.vimrc
echo '删除gitignore'
rm ~/.gitignore


echo '安装vim-plug'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo '链接vimrc'
ln -s ~/dotfiles/vim/init.vim ~/.vimrc
ln -s ~/dotfiles/vim/init.vim ~/.vim/init.vim

echo '链接gitignore'
ln -s  ~/dotfiles/git/gitignore ~/.gitignore

echo '链接代码片段'
ln -s  ~/dotfiles/UltiSnips/ ~/.vim/UltiSnips

echo '链接nvim'
ln -s ~/.vim ~/.config/nvim

echo '链接zshrc'
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc


