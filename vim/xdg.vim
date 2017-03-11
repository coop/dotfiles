" XDG Environment For VIM
" =======================
"
" Original source: https://github.com/dkasak/xdg.vim/blob/master/xdg.vim
" Tweaked by adjusting
" - some environment variable expansion
" - viminfo setting
"
" References
" ----------
"
" - http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html#variables
" - http://tlvince.com/vim-respect-xdg
" - https://gist.github.com/kaleb/3885679 (the original version)
"
" Instructions
" ------------
"
" 1. Create the following directory structure:
"
" - $XDG_CACHE_HOME/vim
" - $XDG_CACHE_HOME/vim/undo
" - $XDG_CACHE_HOME/vim/swap
" - $XDG_CACHE_HOME/vim/backup
" - $XDG_CONFIG_HOME/vim
" - $XDG_DATA_HOME/vim/bundle   (optional, for a plugin manager such as Vundle)
"
" Example commands:
" `mkdir -p $XDG_CACHE_HOME/vim/{undo,swap,backup} $XDG_CONFIG_HOME/vim` or
" `mkdir -p $HOME/.cache/vim/{undo,swap,backup} " $HOME/.config`.
"
" 2. Source this file near the top of your vimrc (but *below* set nocompatible,
"    since setting that resets the viminfo setting)
" 3. (Optional) vim still tries to read your vimrc from standard paths, so if
"    you want to move it elsewhere (e.g. $XDG_CONFIG_HOME/vim/vimrc), you can
"    do oneof of two things:
"       3a. Always run vim using "vim -u <path_to_vimrc>".
"       3b. Set the environment variable VIMINIT to "source <path_to_vimrc>"
"           (the content of VIMINIT can be any ex command).

set directory=CACHE_DIR/swap,~/,/tmp
set backupdir=CACHE_DIR/backup,~/,/tmp
set viminfo='100,nCACHE_DIR/viminfo
set runtimepath+=CONFIG_DIR,CONFIG_DIR/after,$VIM,$VIMRUNTIME
