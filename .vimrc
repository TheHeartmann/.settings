call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-unimpaired'
Plug 'benjifisher/matchit.zip'
Plug 'tpope/vim-surround'
Plug 'kien/rainbow_parentheses.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

"additional packages
packadd! matchit

syntax on " enable syntax highlighting
colorscheme onedark " use onedark atom theme https://github.com/joshdick/onedark.vim
set backspace=indent,eol,start
set nocompatible " fixes some weird bugs in insert mode
set number " show line numbers
set incsearch " search as characters are entered
set hlsearch " highlight matches
set nrformats=
set history=200

" change directory to current file
command CD cd %:p:h
" change local dir to current file
command LCD lcd %:p:h

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
