alias_if_missing() {
  command -v "$1" >/dev/null || alias "$1"="$2"
}

alias_if_missing pbcopy 'xsel --clipboard --input'
alias_if_missing pbpaste 'xsel --clipboard --output'
