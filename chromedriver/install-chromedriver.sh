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

main() {
  local version="${1:-$CHROMEDRIVER_VERSION}"

  if [[ $(uname -s) == "Linux" ]]; then
    if ! downloaded_binary $version; then
      echo "Installing chromedriver v$version"

      download_binary "$version" | gunzip - > "$HOME/bin/chromedriver"
      chmod +x "$HOME/bin/chromedriver"
    fi
  else
    echo "Unsupported distribution"
    exit 1
  fi
}

main "$@"
