export ZSH=~/.oh-my-zsh
#ZSH_THEME="cloud"
ZSH_THEME="norm"
ZSH_THEME="half-life"

PROMPT=$'%{$purple%}%n%{$reset_color%} in %{$limegreen%}%~%{$reset_color%}$(ruby_prompt_info " with%{$fg[red]%} " v g "%{$reset_color%}")$vcs_info_msg_0_%{$orange%}%{$reset_color%} at %{$hotpink%}%* %{$orange%}λ%{$reset_color%} '


# plugs
plugins=(git autojump osx web-search last-working-dir encode64 wd zsh-syntax-highlighting zsh-autosuggestions vi-mode extract z sublime)
source $ZSH/oh-my-zsh.sh

#编辑器
export EDITOR=nvim

#命令别名
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ll='ls -a'
alias c='clear'
alias mkdir='mkdir -p'

alias v='nvim'
alias h='sudo vim /etc/hosts'

alias chongqi='sudo shutdown -r now'
alias guanji='sudo shutdown -h now'
alias yanshi='sudo shutdown -h 20:00'

alias browser='browser-sync start --server --directory --files "**/*.css, **/*.html, **/*.js"'

#浏览器
alias __fanyi='open http://fanyi.baidu.com/?aldtype=16047#auto/zh'

# tmux
alias t='tmux'
alias ta='tmux a'
alias tl='tmux list'

# server
alias ssh_root='ssh root@123.57.140.93'
alias ali='ssh -p 11111 iuunhao@123.57.140.93'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='find . -type f | grep -v .git | grep -v node_modules'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zhs plug
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
