#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Vi mode
set -o vi

# Starship prompt
eval "$(starship init bash)"

# Drops to fish as interactive shell, except if bash is called when inside fish.
#if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
#then
#	exec fish
#fi

eval "$(thefuck --alias)"
