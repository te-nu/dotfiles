# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function color_my_prompt {
    local __user_and_host="\[\033[01;33m\]\u@\h"
    local __cur_location="\[\033[01;36m\]\w"
    local __git_branch_color="\[\033[31m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[00m\]\n$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

alias cc="cd /home/nagai_takahiro/hands/app/controllers";
alias cj="cd /home/nagai_takahiro/hands/app/assets/javascripts";
alias cv="cd /home/nagai_takahiro/hands/app/views"
alias cm="cd /home/nagai_takahiro/hands/app/models"
alias ch="cd ~/hands";
alias vrc="vim ~/.vimrc";
alias brc="vim ~/.bashrc";
alias v="vim";
alias vi="vim";
alias sb="source ~/.bashrc";
alias tmc="vim ~/.tmux.conf";
alias tmux="tmux -2";

alias c.="cd .."
alias ls='ls --color'
LS_COLORS='di=01;36'
export LS_COLORS

export TERM=xterm-256color

export TRUSTED_IP=192.168.56.1

function cdls() {
    # cdがaliasでループするので\をつける
        \cd $1;
            ls;
        }
alias cd=cdls
# User specific aliases and functions
export PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"

source ~/.git-completion.bash