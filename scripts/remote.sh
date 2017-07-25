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
