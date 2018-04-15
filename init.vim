call plug#begin()
Plug 'bps/vim-textobj-python'
Plug 'bronson/vim-visual-star-search'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'glts/vim-textobj-comment'
Plug 'jiangmiao/auto-pairs'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-user'
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-textobj-function-javascript'
Plug 'tpope/tpope-vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'wincent/command-t'
Plug 'easymotion/vim-easymotion'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

syntax on " enable syntax highlighting
set backspace=indent,eol,start
set nocompatible " fixes some weird bugs in insert mode
set number " show line numbers
set incsearch " search as characters are entered
set hlsearch " highlight matches
set nrformats=
set history=200
set pastetoggle=<f5>
set autoread " set autoread to autoread files when they are changed on disk
set hidden " set hidden to allow switching from buffers with unsaved changes
set expandtab
set tabstop=4
set shiftwidth=4

" remap the leader key
let mapleader=" "

" activate filetype plugins, allowing for language specific configs
filetype plugin on

" change directory to current file
command CD cd %:p:h
" change local dir to current file
command LCD lcd %:p:h

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Remapping of & to && for more consistent substitute output on repeats
nnoremap & :&&<CR>
xnoremap & :&&<CR>

set encoding=utf-8
