#!/bin/bash

main() {
  local install_dir="$1"

  if [[ ! -d "${install_dir}" ]]; then
    git clone https://github.com/magicmonty/bash-git-prompt.git "${install_dir}" --depth=1
  fi
}

main "$@"
