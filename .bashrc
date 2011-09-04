# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias vi='vim'
alias l='ls -al'
alias sudo='sudo '

# git-completion
if [ -f ~/git-completion.bash ]; then
	source ~/git-completion.bash
fi


export PS1='\[\033[32m\][\w]\[\033[0m\] $(__git_ps1 " (%s)")\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]'

umask 022

