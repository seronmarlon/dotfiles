__my_prompt () {
  history -a
  history -c
  history -r

  local RUBY_VERSION=`ruby -e "puts RUBY_VERSION"`

  local GIT_BRANCH=`git branch 2> /dev/null | grep \* | sed 's/* //'`

  local NO_COLOR="\[\e[0m\]"

  local INFO_SYMBOL="\342\226\262"
  local PROMPT_SYMBOL="\342\235\257"
  local MAGENTA="\e[38;5;141m"
  local DARK_BLUE="\e[38;5;75m"
  local LIGHT_BLUE="\e[38;5;51m"

  if [ "$GIT_BRANCH" != "" ]; then
      PS1="\n$INFO_SYMBOL $MAGENTA\u $DARK_BLUE\W $LIGHT_BLUE${GIT_BRANCH} ${NO_COLOR}\n$PROMPT_SYMBOL "
  else
      PS1="\n$INFO_SYMBOL $MAGENTA\u $DARK_BLUE\W ${NO_COLOR}\n$PROMPT_SYMBOL "
  fi
}

PROMPT_COMMAND=__my_prompt
