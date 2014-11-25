__my_prompt () {
  history -a
  history -c
  history -r

  local RUBY_VERSION=`ruby -e "puts RUBY_VERSION"`

  local GIT_BRANCH=`git branch 2> /dev/null | grep \* | sed 's/* //'`

  local NO_COLOR="\[\e[0m\]"

  local BLACK="\[\033[0;30m\]"
  local BLUE="\[\033[0;34m\]"
  local CYAN="\[\033[0;36m\]"
  local GRAY="\[\033[1;30m\]"
  local GREEN="\[\033[0;32m\]"
  local RED="\[\033[0;31m\]"
  local VIOLET="\[\033[0;35m\]"
  local WHITE="\[\033[0;37m\]"
  local YELLOW="\[\033[0;33m\]"

  local LIGHT_BLACK="\[\033[1;30m\]"
  local LIGHT_BLUE="\[\033[1;34m\]"
  local LIGHT_CYAN="\[\033[1;36m\]"
  local LIGHT_GRAY="\[\033[0;37m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local LIGHT_RED="\[\033[1;31m\]"
  local LIGHT_VIOLET="\[\033[1;35m\]"
  local LIGHT_WHITE="\[\033[1;37m\]"
  local LIGHT_YELLOW="\[\033[1;33m\]"

  if [ "$GIT_BRANCH" != "" ]; then
      PS1="\n$YELLOW[\u] $RED[${RUBY_VERSION}] $GREEN\w $CYAN[${GIT_BRANCH}]${NO_COLOR}\n\$ "
  else
      PS1="\n$YELLOW[\u] $RED[${RUBY_VERSION}] $GREEN\w${NO_COLOR}\n\$ "
  fi
}

PROMPT_COMMAND=__my_prompt
