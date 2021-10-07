call plugpac#begin()
  Pack 'k-takata/minpac', { 'type': 'opt' }

  Pack 'doums/barow'
  Pack 'vim-jp/vimdoc-ja'
  Pack 'tpope/vim-fugitive'
  Pack 'sheerun/vim-polyglot'
  Pack 'haishanh/night-owl.vim'

call plugpac#end()

"------------------------------------------------------------------------------

syntax enable

colorscheme night-owl
set helplang=ja,en

set ttimeoutlen=10

set shell=/bin/zsh

set belloff=all
set nobackup
set noswapfile
set hidden
set autoread

set number
set relativenumber
set numberwidth=6
set showcmd

set wildmenu
set laststatus=2
set virtualedit=onemore
set scrolloff=15
set showcmd
set backspace=indent,eol,start

set nowritebackup
set nobackup
set noswapfile

set autoread

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

set splitbelow
set splitright

set list
set listchars=tab:>.,trail:_

set hlsearch
set incsearch

set updatetime=250

if has("gui_macvim")
  let g:macvim_skip_colorscheme = 1
  let g:no_gvimrc_example = 1
endif

"------------------------------------------------------------------------------
let g:netrw_liststyle = 1
let g:netrw_banner = 0
let g:netrw_preview = 1
let g:netrw_altv = 1
let g:netrw_winsize = 80

"------------------------------------------------------------------------------

let mapleader = ","

nnoremap s <Nop>
nnoremap <Space> <Nop>
nnoremap <Enter> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

inoremap <F1> <Nop>

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

nnoremap <Enter><Enter> :<C-u>w<CR>
