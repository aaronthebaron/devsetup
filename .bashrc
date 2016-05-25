# .bash_profile

# Source global definitions
if [ -f /etc/bashrc ]; then
		. /etc/bashrc
fi

alias cds="cd ~/Source/pl/"


PS1="\[$(tput bold)\](\t)[\[$(tput setaf 6)\]\u@\h\[$(tput setaf 2)\] \w]>\[$(tput sgr0)\]"

# Source the git bash completion file
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    source /usr/local/etc/bash_completion.d/git-completion.bash
    source /usr/local/etc/bash_completion.d/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    PS1="\[$(tput bold)\](\t)[\[$(tput setaf 6)\]\u@\h\[$(tput setaf 2)\] \$(__git_ps1 \" (%s)\") \w]>\[$(tput sgr0)\]"
fi

export PS1

#Make git log awesome
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
