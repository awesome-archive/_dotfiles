export ZSH=~/.oh-my-zsh
#ZSH_THEME="cloud"
ZSH_THEME="norm"

plugins=(git)
source $ZSH/oh-my-zsh.sh

#标题栏
case $TERM in (*xterm*|*rxvt*|(dt|k|E)term)
precmd () { print -Pn "\e]0;%n@%M//%/\a" }
preexec () { print -Pn "\e]0;%n@%M//%/\ $1\a" }
;;
esac

#编辑器
export EDITOR=vim

#允许在交互模式中使用注释  例如：
setopt INTERACTIVE_COMMENTS

#启用自动 cd，输入目录名回车进入目录
setopt AUTO_CD

#禁用 core dumps
limit coredumpsize 0

#扩展路径
setopt complete_in_word

#自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'

zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate

#路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'


#修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
#错误校正
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

#补全类型提示分组
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'

# cd ~ 补全顺序
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'

##行编辑高亮模式
zle_highlight=(region:bg=magenta #选中区域
special:bold      #特殊字符
isearch:underline)#搜索时使用的关键字

#路径别名
hash -d A="/media/ayu/dearest"
hash -d H="/media/data/backup/ayu"
hash -d E="/etc/"
hash -d D="/home/ayumi/Documents"


#命令别名
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias grep='grep --color=auto'
alias la='ls -a'
alias pacman='sudo pacman-color'
alias p='sudo pacman-color'
alias y='yaourt'

alias c='clear'

alias mkdir='mkdir -p'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias gcl='git clone'
alias ga='git add .'
alias gc='git commit'
alias gpm='git push -u origin master'
alias gpd='git push -u origin dev'
alias gpg='git push -u origin gh-pages'
alias gl='git pull'
alias gs='git status'
alias glog='tig'
alias gre='git reset --hard'

alias a='atom'
alias vi='vim'
#alias vim='sudo mvim -v'
#alias h='sudo mvim -v /etc/hosts'
alias vh='sudo mvim -v /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf'
alias web='webpack -d -w'

alias chongqi='sudo shutdown -r now'
alias guanji='sudo shutdown -h now'
alias yanshi='sudo shutdown -h 20:00'

alias xianshi='defaults write com.apple.finder AppleShowAllFiles -bool true'
alias yincang='defaults write com.apple.finder AppleShowAllFiles -bool false'

#Enter the directory
alias cnew='cd ~/Desktop/Qianyi/static.qianyilc.com/trunk/FED/newStatic && fedx'
alias cg='cd ~/Desktop/MyGithub'
alias cdes='cd ~/Desktop/'

alias ohtml='open ~/Desktop/Qianyi/static.qianyilc.com/trunk/FED/newStatic/mobile/html'
alias ocss='open ~/Desktop/Qianyi/static.qianyilc.com/trunk/FED/newStatic/mobile/css'
alias oimg='open ~/Desktop/Qianyi/static.qianyilc.com/trunk/FED/newStatic/mobile/images'
alias opostcss='open ~/Desktop/Qianyi/static.qianyilc.com/trunk/FED/newStatic/mobile/postcss'
alias cdwncss='cd ~/Desktop/MaYun/wncss/'
alias cdst='cd ~/Desktop/st_pro.qianyilc.com/ && git pull origin f-v1'

alias browser='browser-sync start --server --directory --files "**/*.css, **/*.html, **/*.js"'
alias cb='gcc demo.c && ./a.out'


#浏览器
alias __vimplug='open http://vimawesome.com/'
alias __kaoqin='open http://kaoqin.intra.qianyilc.com/'
alias __fanyi='open http://fanyi.baidu.com/?aldtype=16047#auto/zh'

#tmux
alias t='tmux'
alias tn='tmux new-session -s'
alias ts='tmux-session save'
alias tdev='tmux-session dev'
alias te='crontab -e'

alias ssh_root='ssh root@123.57.140.93'
alias ali='ssh -p 11111 iuunhao@123.57.140.93'

#git
alias ghuiyauncheng='git reset --hard'
alias gshanchufenzhi='git push origin :'

alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias nano="subl"
export EDITOR="subl"


#server aliyun ubuntu14.04
alias cd_nginx_confd='cd /etc/nginx/conf.d'
alias dpull='cd ~/dotfiles/ && git pull && source ~/dotfiles/zsh/zshrc'


alias f='fzf $(find . -type f | grep -v .git | grep -v node_modules | fzf -q "$LBUFFER")'


COLOR_BLACK="\e[0;30m"
COLOR_BLUE="\e[0;34m"
COLOR_GREEN="\e[0;32m"
COLOR_CYAN="\e[0;36m"
COLOR_PINK="\e[0;35m"
COLOR_RED="\e[0;31m"
COLOR_PURPLE="\e[0;35m"
COLOR_BROWN="\e[0;33m"
COLOR_LIGHTGRAY="\e[0;37m"
COLOR_DARKGRAY="\e[1;30m"
COLOR_LIGHTBLUE="\e[1;34m"
COLOR_LIGHTGREEN="\e[1;32m"
COLOR_LIGHTCYAN="\e[1;36m"
COLOR_LIGHTRED="\e[1;31m"
COLOR_LIGHTPURPLE="\e[1;35m"
COLOR_YELLOW="\e[1;33m"
COLOR_WHITE="\e[1;37m"
COLOR_NONE="\e[0m"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



