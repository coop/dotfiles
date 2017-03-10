#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${ruby}" https://github.com/asdf-vm/asdf-ruby.git
}

main "$@"
