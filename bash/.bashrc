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
alias ls="ls -F --color=auto"
alias la="exa -aF"
alias ll="exa -alh --git --icons"
alias tree="exa -aFT --icons"
alias ..="cd .."
alias grep="grep --color=auto"
alias python='python3'

