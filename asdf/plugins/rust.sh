#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${rust}" https://github.com/code-lever/asdf-rust.git
}

main "$@"
