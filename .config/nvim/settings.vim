
" Settings {{{

set nocompatible

" Enable syntax highlight
syntax enable

" Required to keep open multiple buffers
set hidden

" The encoding displayed
set encoding=utf-8

" The encoding written to a file
set fileencoding=utf-8

" Treat dash separated words as a word text object
set iskeyword+=-

" Ignore the case when the search pattern is all lowercase
set smartcase
set ignorecase

" use system clipboard
set clipboard+=unnamedplus

" Enable mouse
set mouse=a

" Loading the plugin files for specific file types
filetype plugin on

" Enable autocompletion
set wildmode=longest,list,full

" Disables automatic commenting on newline
set formatoptions-=cro

set nohlsearch

" Splits open at the bottom and right, which is non-retarted, unlike vim defaults.
set splitbelow splitright

set ttimeout
set ttimeoutlen=100

" }}}

" Colors {{{

" Enable true colors support
set termguicolors

colorscheme pop-punk
set background=dark

" }}}

" Tabs and Spaces {{{

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set autoindent
set linespace=2

" }}}

" UI {{{

set go=a
set number relativenumber
set ruler
set cursorline
set showtabline=2
set showcmd
set cmdheight=2
set laststatus=0
set showmatch
set listchars=tab:→\ ,eol:↲,space:˽,nbsp:✗,trail:•,extends:❯,precedes:❮
set list
set showbreak=↪\ 
highlight NonText ctermfg=grey guifg=grey20

" }}}

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
