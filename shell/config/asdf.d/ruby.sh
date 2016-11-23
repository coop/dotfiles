if ! asdf plugin-list | grep -q ruby; then
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
fi
