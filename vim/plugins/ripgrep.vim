Plug 'jremmen/vim-ripgrep'

map <LEADER>f :Rg<Space>

set grepprg="rg --vimgrep --no-heading"

" Search for the word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
