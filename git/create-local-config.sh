file="${XDG_CONFIG_HOME}/git/config.local"

if [ ! -e $file ]; then
  echo "Configuring local Git settings:"
  read -p "    Enter Git Name: " username
  git config -f $file user.name "$username"
  read -p "    Enter Git Email: " email
  git config -f $file user.email $email
  echo "Configured git settings in ${file}. Not stored in local .dotfiles repo."
fi
