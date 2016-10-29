export NVM_DIR="${XDG_DATA_HOME}/nvm"
if [ ! -d ${NVM_DIR} ]; then
  git clone git@github.com:creationix/nvm.git $NVM_DIR
fi
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"
