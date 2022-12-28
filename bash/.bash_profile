if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# 環境変数
export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="$HOME/.cargo/env:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
export HISTTIMEFORMAT='%F %T '

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

function join_by() { local IFS="$1"; shift; echo "$*"; }
function _ps1_git_username() {
    local git_users_array=`git config --global --get-all user.name`
    git_users=`join_by , $git_users_array`
    test "$git_users" == 'ikatama' && echo "🍊" && return
    test "$git_users" && echo "$git_users" && return
    echo "No Git User"
}
# PS1 is the variable for the prompt you see everytime you hit enter
git_prompt_script=~/dotfiles/bash/.git-prompt.sh
if [ -s $git_prompt_script ]; then
    # if git-prompt is installed, use it (ie. to install it use:
    # `brew install git`)
    source $git_prompt_script
    export GIT_PS1_SHOWDIRTYSTATE=true
    export PS1='\[\e[0;31m\]\W\[\e[0;32m\] ($(_ps1_git_username "(%s)")$(__git_ps1 ":%s")) \[\e[0m\]:$ '
else
    # otherwise omit git from the prompt
    export PS1="$ColorRed\W$ColorReset :$ "
fi
# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex

# Load git completions
git_completion_script=~/dotfiles/bash/.git-completion.bash
test -s $git_completion_script && source $git_completion_script
# A more colorful prompt
# \[\e[0m\] resets the color to default color
ColorReset='\[\e[0m\]'
# \e[0;31m\ sets the color to red
ColorRed='\[\e[0;31m\]'
# \e[0;32m\ sets the color to green
ColorGreen='\[\e[0;32m\]' 

