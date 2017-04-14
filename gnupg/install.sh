#!/bin/bash

main() {
  gpg2 --homedir "$1" --list-keys > /dev/null
}

main "$@"
