# jump to dev folder
function cdd(){
  cd ~/Developments/$*
}

# tar compact
function tarc(){
  tar -czvf $1 $2
}

# tar extract
function tarx(){
  tar -xzvf $1 $2
}

# list ssh config file
function lservers(){
  cat ~/.ssh/config
}

# grep bash history
function gh(){
  history | grep $1
}

# clear gem file
function cgems(){
  for x in `gem list --no-versions`; do gem uninstall $x -a -x -I; done
}
