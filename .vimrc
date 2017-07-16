call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

syntax on " enable syntax highlighting                           
colorscheme onedark " use onedark atom theme https://github.com/joshdick/onedark.vim                                              
set backspace=indent,eol,start                                   
set nocompatible " fixes some weird bugs in insert mode          
set number " show line numbers                                   
set incsearch " search as characters are entered                 
set hlsearch " highlight matches   
