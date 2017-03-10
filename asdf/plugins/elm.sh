#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${elm}" https://github.com/vic/asdf-elm.git
}

main "$@"
