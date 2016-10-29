syntax enable

" Remove viminfo limits
set viminfo='100,h

" Misc. config
set nocompatible
set backspace=indent,eol,start  " Why would I ever want backspace to not work?
set scrolloff=3                 " Start scrolling 3 lines before edge
set showmatch                   " Highlight matching brackets on entry
set autoread                    " Sensibly read changed files
set showcmd                     " Display incomplete commands
set noswapfile                  " Disable creation of *.swp files

" Indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype indent on
set foldmethod=indent                      " Fold based on source indentation
set foldlevelstart=99                      " Expand all folds by default

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" Wrap
set nowrap                                 " I don't always wrap lines...
set linebreak                              " ...but when I do, I wrap whole words.
set wildmenu                               " Make tab completion act more like bash
set wildmode=list:longest                  " Tab complete to longest common string, like bash
set wildignore+=tags,.*.un~,*.pyc
set switchbuf=useopen                      " Don't re-open already opened buffers

" Line numbering
set number
set relativenumber

hi CursorLineNr ctermfg=7     " highlght current line number

command! Q q " Bind :Q to :q
command! Qall qall

" Use % to jump to matching begin/end of blocks as well as brackets/parens
runtime macros/matchit.vim
