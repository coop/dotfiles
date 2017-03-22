#!/bin/bash

HUB_VERSION="${1:-2.3.0-pre9}"

ignore_output() {
  "$@" > /dev/null 2>&1
}

binary_name() {
  local version="$1"

  echo "hub-linux-amd64-$version"
}

download_binary() {
  local version="$1"

  curl \
    --location \
    --silent \
    --show-error \
    "https://github.com/github/hub/releases/download/v$version/$(binary_name $version).tgz"
}

downloaded_binary() {
  local version="$1"

  ignore_output command -v hub && hub --version | grep --quiet "$version"
}

main() {
  local version="${1:-$HUB_VERSION}"

  if [[ $(uname -s) == "Linux" ]]; then
    if ! downloaded_binary $version; then
      echo "Installing hub v$version"

      tmp_dir=$(mktemp --directory)

      ignore_output pushd $tmp_dir
      download_binary "$version" | tar -zxf -
      ignore_output popd

      mv "$tmp_dir/$(binary_name $version)/bin/hub" "$HOME/bin"
      rm -rf $tmp_dir
    fi
  else
    echo "Unsupported distribution"
    exit 1
  fi
}

main "$@"
