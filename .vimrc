filetype plugin indent on
syntax on

set directory=~/.vim/swapfiles/

" Numbers
set number	             " Display line numbers beside buffer
set numberwidth=5

set scrolloff=4          " Keep at least 4 lines below cursor

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make it obvious where 99 characters is
highlight ColorColumn ctermbg=DarkGray
set textwidth=119
set colorcolumn=+1

" Highlights the areas that you search for
set hlsearch

" Searches incremetally as you type.
set incsearch

" Map keys to open and close NerdTree
map <C-n> :NERDTreeToggle<CR>

" Shows trailing whitespace and spaces before a tab
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Moving in buffer next previous and closing one
nmap <Right> :bnext<CR>
nmap <Left> :bprevious<CR>
nmap <C-e> :bp<BAR>bd#<CR>

" Don't be a noob, join the no arrows key movement
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Set a vim-airline-theme
let g:airline_theme='base16'

" " Make CtrlP use ag for listing the files. Way faster and no useless files.
" let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
" let g:ctrlp_use_caching = 0

