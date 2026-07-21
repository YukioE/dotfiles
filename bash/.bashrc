#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fastfetch

alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias v='nvim'
PS1='[\u@\h \W]\$ '
