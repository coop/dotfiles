if ! asdf plugin-list | grep -q nodejs; then
  asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
fi
