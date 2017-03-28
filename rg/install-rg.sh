#!/bin/bash

RG_VERSION="${1:-0.5.0}"

ignore_output() {
  "$@" > /dev/null 2>&1
}

binary_name() {
  local version="$1"

  echo "ripgrep-${version}-x86_64-unknown-linux-musl"
}

download_binary() {
  local version="$1"

  curl \
    --location \
    --silent \
    --show-error \
    "https://github.com/BurntSushi/ripgrep/releases/download/$version/$(binary_name $version).tar.gz"
}

downloaded_binary() {
  local version="$1"

  ignore_output command -v rg && rg --version | grep --quiet "$version"
}

main() {
  local version="${1:-$RG_VERSION}"

  if [[ $(uname -s) == "Linux" ]]; then
    if ! downloaded_binary $version; then
      echo "Installing rg v$version"

      tmp_dir=$(mktemp --directory)

      ignore_output pushd $tmp_dir
      download_binary "$version" | tar -zxf -
      ignore_output popd

      mv "$tmp_dir/$(binary_name $version)/rg" "$HOME/bin"
      rm -rf $tmp_dir
    fi
  else
    echo "Unsupported distribution"
    exit 1
  fi
}

main "$@"
