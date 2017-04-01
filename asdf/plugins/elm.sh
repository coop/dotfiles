#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${plugin}" https://github.com/vic/asdf-elm.git
}

main "$@"
