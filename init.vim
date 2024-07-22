:set mouse
:set number
:set smarttab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set autoindent
call plug#begin()
Plug 'https://github.com/machakann/vim-sandwich.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/vim-airline/vim-airline' 
Plug 'https://github.com/preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/dyng/ctrlsf.vim'
Plug 'https://github.com/derekwyatt/vim-fswitch'
call plug#end()
lua require('cfg')
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

filetype plugin on
let g:AutoPairsShortcutToggle = '<M-p>' 
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-@> coc#refresh()
