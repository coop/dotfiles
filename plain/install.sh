#!/bin/bash

git_clone() {
  local repository="$1"
  local clone_dir="$2"

  if [[ ! -d "${clone_dir}" ]]; then
    git clone "git@github.com:${repository}.git" "${clone_dir}"
  fi
}

main() {
  local install_dir="$1"

  mkdir -p "${install_dir}"

  git_clone "everydayhero/configure" "${install_dir}/configure"
  git_clone "everydayhero/plain-utils" "${install_dir}/plain-utils"
}

main "$@"
