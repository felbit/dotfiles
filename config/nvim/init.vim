set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" Color Schemes
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeMirror']}

" requires fzf package
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Vim-Surround
" Changes delimierts, e.g. cs"' changes "Hello, World!" to 'Hello, World!'
Plug 'tpope/vim-surround'

" Vim-Fugitive
" The best Git wrapper of all time
Plug 'tpope/vim-fugitive'

" vimwiki --- Personal documentation system
Plug 'vimwiki/vimwiki'

" Markdown
" tabular plug must come before vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Auto Completion
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"""
""" Programming Languages
"""
" Rust
Plug 'rust-lang/rust.vim'

call plug#end()

syntax enable
colorscheme onedark
filetype plugin indent on

set title
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set relativenumber

set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,eol:¬

set ignorecase
set smartcase
set incsearch
set showmatch

set tabstop=4
set shiftwidth=4
set expandtab

let mapleader=" "
let g:mapleader=" "

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

inoremap <C-E> <End>
inoremap <C-A> <Home>

" yy yanks the line already - so please, Y behave like D and C
nnoremap Y y$

" Utilize FZF
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>ff :Files<CR>

" Shut up
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" VimWiki with Markdown
let g:vimwiki_list = [{'path': '~/Dropbox/Wiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Disable MarkDown folding that drives me nuts
let g:vim_markdown_folding_disabled = 1

" COC Config
autocmd FileType json syntax match Comment +\/\/.\+$+

