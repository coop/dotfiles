if ! asdf plugin-list | grep -q nodejs; then
  asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  bash "${XDG_DATA_HOME}/asdf/plugins/nodejs/bin/import-release-team-keyring"
fi
