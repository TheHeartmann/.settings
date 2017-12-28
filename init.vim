call plug#begin()
" Plug 'airblade/vim-gitgutter'
" Plug 'benjifisher/matchit.zip'
" Plug 'blueyed/vim-diminactive'
Plug 'bps/vim-textobj-python'
Plug 'bronson/vim-visual-star-search'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'glts/vim-textobj-comment'
" Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-user'
Plug 'kien/rainbow_parentheses.vim'
" Plug 'majutsushi/tagbar'
" Plug 'mileszs/ack.vim'
" Plug 'mtth/cursorcross.vim'
" Plug 'myint/syntastic-extras'
" Plug 'OmniSharp/omnisharp-vim'
" Plug 'rust-lang/rust.vim'
Plug 'schickling/vim-bufonly'
" Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/syntastic'
" Plug 'SirVer/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-textobj-function-javascript'
" Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/tpope-vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
" Plug 'valloric/youcompleteme'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-scripts/a.vim' hello
Plug 'wincent/command-t'
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'
Plug 'easymotion/vim-easymotion'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

" " airline customisation
" let g:airline_theme='distinguished'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

syntax on " enable syntax highlighting
colorscheme onedark " use onedark atom theme https://github.com/joshdick/onedark.vim
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

" Temporary disabling of arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Remapping of & to && for more consistent substitute output on repeats
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Disable cursorline in inactive windows
augroup CursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline
augroup END

set encoding=utf-8

" don't move cursor back one space when exiting insert mode
" autocmd InsertEnter * let CursorColumnI = col('.')
" autocmd CursorMovedI * let CursorColumnI = col('.')
" autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif
