function prepend_path() {
  if [ -d "$1" ]; then
    PATH="$1:$PATH"
  fi
}

function append_path() {
  if [ -d "$1" ]; then
    PATH="$PATH:$1"
  fi
}

prepend_path "${XDG_DATA_HOME}/bin"
prepend_path "${HOME}/bin"

unset prepend_path
unset append_path
