# setting Language
export LANG=ja_JP.UTF-8

# setting prompt
source ~/dotfiles/bash/.git-prompt.sh
source ~/dotfiles/bash/.git-completion.bash
GIT_PS1_SHOWDIRTYSTAT=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1
export PS1='\[\033[1;36m\]\u\[\033[00m\]:\[\033[1;34m\]\w \[\033[1;31m\]$(__git_ps1 "(%s)") \[\033[00m\]\$ '

# alias
alias ls="ls -F"
alias la="ls -aF"
alias ll="ls -alh"
alias tree="eza -aFT --icons"
alias ..="cd .."
alias grep="grep --color=auto"
alias python='python3'
alias lcd="cd $(\ls -d */ | peco)"

# ssh-agentの実行
eval "$(ssh-agent)" 1> /dev/null

. "$HOME/.cargo/env"

if [ -n "$(which nvim)" ]; then
    brew install nvim;
fi

