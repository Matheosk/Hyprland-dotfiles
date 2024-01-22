call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'mattn/emmet-vim'
	Plug 'preservim/nerdtree'
	Plug 'ervandew/supertab'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'lervag/vimtex'
	Plug 'ryanoasis/vim-devicons'
	Plug 'rust-lang/rust.vim'
call plug#end()

" Vim Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" General config
set title 'vim'
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax enable
set number relativenumber
set cursorline
set shiftwidth=4
set tabstop=4
set incsearch
set ignorecase
set hlsearch
set wildmenu
set autoindent
set showmatch
set mouse
filetype plugin indent on

" ColorScheme config
colorscheme gruvbox
set background=dark
hi Normal guifg=#44cc44 guibg=NONE ctermbg=none

" Key Mappings
map <C-d>  :bnext<CR>
map <C-a>  :bprev<CR>
map <C-s>  :write<CR>

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
