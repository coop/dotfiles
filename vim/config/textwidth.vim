" Custom widths
autocmd bufreadpre *.slim setlocal textwidth=0
autocmd bufreadpre *.sass setlocal textwidth=0
autocmd FileType ruby setlocal textwidth=80
autocmd FileType cucumber setlocal nowrap
autocmd FileType ruby setlocal iskeyword+=?
autocmd FileType mkd setlocal textwidth=66

" Show the textwidth
set colorcolumn=+1
