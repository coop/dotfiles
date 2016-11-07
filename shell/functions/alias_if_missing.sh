alias_if_missing() {
  command -v "$1" >/dev/null || alias "$1"="$2"
}
