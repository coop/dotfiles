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

install_linux() {
  local version="$1"

  if ! downloaded_binary $version; then
    echo "Installing hub v$version"

    tmp_dir=$(mktemp --directory)

    ignore_output pushd $tmp_dir
    download_binary "$version" | tar -zxf -
    ignore_output popd

    # binary
    mv "$tmp_dir/$(binary_name $version)/bin/hub" "${XDG_BIN_HOME}"

    # man pages
    find "$tmp_dir/$(binary_name $version)/share/man/man1/" -mindepth 1 | \
      grep -v txt | \
      xargs -I{} cp {} "${XDG_MAN_HOME}/man1/"

    rm -rf $tmp_dir
  fi
}

install_mac() {
  local version="$1"

  if ! downloaded_binary $version; then
    echo "Installing hub v$version"

    brew install hub
  fi
}

main() {
  local version="${1:-$HUB_VERSION}"
  local dist="$(uname -s)"

  case "$dist" in
    Linux)
      install_linux "$version"
      ;;
    Darwin)
      install_mac "$version"
      ;;
    *)
      echo "Don't know how to install hub on $dist"
      exit 1
  esac
}

main "$@"
