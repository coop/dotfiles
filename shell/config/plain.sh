directory=$HOME/Code/everydayhero
export PLAIN_LOCAL_CONFIGURE_LOCATION=$directory/configure

if [[ ! -d $directory/plain-utils ]]; then
  mkdir -p $directory
  git clone git@github.com:everydayhero/plain-utils.git $directory/plain-utils
fi

source $directory/plain-utils/etc/bash_completion
prepend_path "${directory}/plain-utils/bin"
