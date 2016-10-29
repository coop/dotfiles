for lib in "ruby-install" "chruby"; do
  install_dir="${XDG_DATA_HOME}/${lib}"

  if [ ! -d "${install_dir}" ]; then
    git clone "git@github.com:postmodern/${lib}.git" "${install_dir}"
    (cd "${install_dir}" && sudo make install)
  fi
done
unset lib install_dir

source /usr/local/share/chruby/chruby.sh
RUBIES+=($XDG_DATA_HOME/rubies/*)
source /usr/local/share/chruby/auto.sh
