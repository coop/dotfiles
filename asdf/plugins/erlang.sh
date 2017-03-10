#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${erlang}" https://github.com/asdf-vm/asdf-erlang.git
}

main "$@"
