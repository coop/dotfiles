#!/bin/bash

main() {
  local install_dir="$1"

  if ! [[ -f "${install_dir}/autoload/plug.vim" ]]; then
    curl -fLo "${install_dir}/autoload/plug.vim" --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
}

main "$@"
