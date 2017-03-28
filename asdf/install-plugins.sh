#!/bin/bash

install_plugins() {
  while read path_to_plugin; do
    plugin=$(basename "${path_to_plugin}" | sed -e 's/\.sh$//')
    install_plugin "${plugin}" "${path_to_plugin}"
  done
}

install_plugin() {
  local plugin=$1
  local path_to_plugin=$2

  if ! asdf plugin-list | grep -q "${plugin}"; then
    "$path_to_plugin" "${plugin}"
  fi
}

find $FRESH_LOCAL/asdf/plugins -maxdepth 1 -name *.sh | install_plugins
