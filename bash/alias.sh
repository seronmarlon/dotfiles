# Utility
alias reload="source ~/.bash_profile"

# List
alias ll="ls -lahG"

# Processes
alias tu="top -o cpu"
alias tm="top -o vsize"
alias k9="killall -9"

# Misc
alias tlsys="tail -f /var/log/system.log"

# Tools
alias g="git"
alias vg="vagrant"

# Ruby
alias r="rails"
alias rs="rails s -b 0.0.0.0"
alias rk="rake"
alias bi="bundle install"

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

function list_servers(){
  cat ~/.ssh/config
}

function gh(){
  history | grep $1
}
