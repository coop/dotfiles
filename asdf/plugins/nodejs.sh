#!/bin/bash

main() {
  local plugin="$1"

  asdf plugin-add "${plugin}" https://github.com/asdf-vm/asdf-nodejs.git
  bash "${XDG_DATA_HOME}/asdf/plugins/nodejs/bin/import-release-team-keyring"
}

main "$@"
