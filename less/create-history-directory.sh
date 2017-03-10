#!/bin/bash

main() {
  local history_dir="$1"

  if [[ ! -d "${history_dir}" ]]; then
    mkdir -p "${history_dir}"
  fi
}

main "$@"
