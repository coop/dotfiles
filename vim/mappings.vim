" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Directory lising
nnoremap <LEADER>n :n .<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Turn off default mappings.
map Q <Nop>|" Disable Ex mode

" Disable scrolling with the mouse
map <ScrollWheelUp> <Nop>
map <ScrollWheelDown> <Nop>
map <ScrollWheelLeft> <Nop>
map <ScrollWheelRight> <Nop>

" Jump to start and end of line using the home row keys
map H ^
map L $
