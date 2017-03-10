#!/bin/bash

main() {
  local install_dir="$1"

  if [ ! -d "${install_dir}" ]; then
    git clone https://github.com/asdf-vm/asdf.git "${install_dir}"
  fi
}

main "$@"
