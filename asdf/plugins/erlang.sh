#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${plugin}" https://github.com/asdf-vm/asdf-erlang.git
}

main "$@"
