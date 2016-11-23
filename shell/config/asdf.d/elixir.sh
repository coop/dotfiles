if ! asdf plugin-list | grep -q erlang; then
  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
fi

if ! asdf plugin-list | grep -q elixir; then
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
fi
