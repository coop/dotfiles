#!/bin/bash

main() {
  cache_dir="$1"
  config_dir="$2"

  mkdir -p $cache_dir/{undo,swap,backup} $config_dir
}

main "$@"
