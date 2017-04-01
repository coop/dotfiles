#!/bin/bash

set -euo pipefail

main() {
  local cache_dir="$1"
  local config_dir="$2"
  local data_dir="$3"

  mkdir -p $cache_dir/{undo,swap,backup} $config_dir $data_dir
  vim/vim-plug/install-vim-plug.sh "${data_dir}"
}

main "$@"
