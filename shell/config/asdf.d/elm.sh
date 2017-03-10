if ! asdf plugin-list | grep -q elm; then
  asdf plugin-add elm https://github.com/vic/asdf-elm.git
fi
