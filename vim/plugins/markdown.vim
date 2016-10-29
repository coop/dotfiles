Plug 'plasticboy/vim-markdown'

let g:vim_markdown_initial_foldlevel = 99
let g:vim_markdown_fenced_languages = ['viml=vim', 'bash=sh', 'ruby=rb']
let g:vim_markdown_frontmatter = 1

autocmd FileType markdown setlocal spell
autocmd FileType markdown setlocal textwidth=80
