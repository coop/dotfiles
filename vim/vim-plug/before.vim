let autoload_dir = "CONFIG_DIR/autoload"
if !isdirectory(expand(autoload_dir))
  silent execute '!curl -sfLo '.autoload_dir.'/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

let plug_dir = "DATA_DIR/plugged"
call plug#begin(plug_dir)
