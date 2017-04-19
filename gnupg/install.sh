#!/bin/bash

main() {
  gpg --homedir "$1" --list-keys > /dev/null
}

main "$@"
