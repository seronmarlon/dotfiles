export LC_CTYPE=en_US.UTF-8

export PATH="$PATH:~/.local/bin/:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/bin:~/.config/dotfiles/scripts"

export EDITOR="nvim --wait"

export HISTFILE="$HOME/.bash_history"
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000000

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

shopt -s cdspell
shopt -s nocaseglob
shopt -s checkwinsize
shopt -s dotglob
shopt -s extglob
shopt -s progcomp
shopt -s histappend
