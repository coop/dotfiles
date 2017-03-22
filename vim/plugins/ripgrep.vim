Plug 'mileszs/ack.vim'

let g:ackprg = "rg --vimgrep --no-heading"

map <LEADER>f :Ack!<Space>

set grepprg="rg --vimgrep --no-heading"
set grepformat="%f:%l:%c:%m,%f:%l:%m"

" Search for the word under cursor
nnoremap K :Ack!<CR>
