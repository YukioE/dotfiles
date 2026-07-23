#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias v='nvim'
alias ff='fastfetch'
PS1='[\u@\h \W]\$ '

ff
