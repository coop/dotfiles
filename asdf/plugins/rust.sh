#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${plugin}" https://github.com/code-lever/asdf-rust.git
}

main "$@"
