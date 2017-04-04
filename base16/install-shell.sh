#!/bin/bash

main() {
  local install_dir="$1"
  local repo="https://github.com/chriskempson/base16-shell.git"

  if ! [[ -d "$install_dir" ]]; then
    git clone "$repo" --depth=1 "$install_dir"
  fi
}

main "$@"
