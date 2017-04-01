# brew install coreutils
if [[ -d "/usr/local/opt/coreutils/libexec/gnubin" ]]; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi
