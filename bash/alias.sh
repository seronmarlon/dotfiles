# Utility
alias reload="source ~/.bash_profile"

# List
alias ll="ls -lahG"

# Processes
alias tu="top -o cpu"
alias tm="top -o vsize"
alias k9="killall -9"

# Tools
alias c="code"
alias g="git"
alias a="asdf"

# Ruby
alias r="rails"
alias rs="rails server -b 0.0.0.0"
alias rc="rails console"
alias rk="rake"
alias bi="bundle install"

# Misc
alias tlsys="tail -f /var/log/system.log"

# Functions
function cdd(){
  cd ~/Developments/$*
}

function tarc(){
  tar -czvf $1 $2
}

function tarx(){
  tar -xzvf $1 $2
}

function lservers(){
  cat ~/.ssh/config
}

function gh(){
  history | grep $1
}

function cgems(){
  for x in `gem list --no-versions`; do gem uninstall $x -a -x -I; done
}
