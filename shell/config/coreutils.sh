# brew install coreutils
if [[ -d "/usr/local/opt/coreutils/libexec/gnubin" ]]; then
  prepend_path "/usr/local/opt/coreutils/libexec/gnubin"
  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi
