# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'

#export TERM="screen-256color" 
export TERM=xterm-256color

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
