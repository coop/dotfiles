let autoload_dir = expand("$XDG_CONFIG_HOME/vim/autoload")
if !isdirectory(expand(autoload_dir))
  silent execute '!curl -sfLo '.autoload_dir.'/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

let plug_dir = expand("$XDG_DATA_HOME/vim/plugged")
call plug#begin(plug_dir)
