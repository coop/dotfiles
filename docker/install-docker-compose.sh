#!/bin/bash

DOCKER_COMPOSE_VERSION="${1:-1.12.0-rc1}"
INSTALL_LOCATION="$HOME/bin/docker-compose"

ignore_output() {
  "$@" > /dev/null 2>&1
}

download_binary() {
  local version="$1"

  curl \
    --location \
    --silent \
    --show-error \
    "https://github.com/docker/compose/releases/download/$version/docker-compose-$(uname -s)-$(uname -m)"
}

downloaded_binary() {
  local version="$1"

  ignore_output command -v docker-compose && docker-compose --version | grep --quiet "$version"
}

main() {
  local version="${1:-$DOCKER_COMPOSE_VERSION}"

  if ! downloaded_binary $version; then
    echo "Installing docker-compose v$version"

    download_binary "$version" > "$INSTALL_LOCATION"
    chmod +x "$INSTALL_LOCATION"
  fi
}

main "$@"
