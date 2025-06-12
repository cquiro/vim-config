"------------------------------
" PLUGIN MANAGER: vim-plug
"------------------------------
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'

call plug#end()

"------------------------------
" BASIC SETTINGS
"------------------------------
filetype plugin indent on
syntax on

set number
set numberwidth=5
set scrolloff=4

set tabstop=4
set shiftwidth=4
set expandtab
set shiftround

set textwidth=119
set colorcolumn=+1
highlight ColorColumn ctermbg=DarkGray

set hlsearch
set incsearch
set mouse=a

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/

"------------------------------
" KEY MAPPINGS
"------------------------------
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <Right> :bnext<CR>
nnoremap <Left>  :bprevious<CR>
nnoremap <C-e>   :bp<BAR>bd#<CR>

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>

"------------------------------
" AIRLINE SETTINGS
"------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'base16'

"------------------------------
" FZF SETTINGS
"------------------------------
nnoremap <C-p> :Files<CR>

"------------------------------
" UNDO HISTORY
"------------------------------
set undofile
set undodir=~/.vim/undodir

