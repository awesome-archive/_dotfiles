#!/usr/bin/env bash
~

git clone git@github.com:iuunhao/dotfiles.git
git checkout dev

sh ~/dotfiles/config.sh

sh ~/dotfiles/links.sh

sh ~/dotfiles/gitconfig.sh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s /bin/zsh
