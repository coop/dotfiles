#!/bin/bash

CHROMEDRIVER_VERSION="${1:-2.28}"

ignore_output() {
  "$@" > /dev/null 2>&1
}

download_binary() {
  local version="$1"

  curl \
    --location \
    --silent \
    --show-error \
    "https://chromedriver.storage.googleapis.com/$version/chromedriver_linux64.zip"
}

downloaded_binary() {
  local version="$1"

  ignore_output command -v chromedriver && chromedriver --version | grep --quiet "$version"
}

install_linux() {
  local version="$1"

  if ! downloaded_binary $version; then
    echo "Installing chromedriver v$version"

    download_binary "$version" | gunzip - > "${XDG_BIN_HOME}/chromedriver"
    chmod +x "${XDG_BIN_HOME}/chromedriver"
  fi
}

install_mac() {
  local version="$1"

  if ! downloaded_binary $version; then
    echo "Installing chromedriver v$version"

    brew install chromedriver
  fi
}

main() {
  local version="${1:-$CHROMEDRIVER_VERSION}"
  local dist="$(uname -s)"

  case "$dist" in
    Linux)
      install_linux "$version"
      ;;
    Darwin)
      install_mac "$version"
      ;;
    *)
      echo "Don't know how to install chromedriver on $dist"
      exit 1
  esac
}

main "$@"
