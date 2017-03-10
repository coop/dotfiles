if ! asdf plugin-list | grep -q rust; then
  asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
fi
