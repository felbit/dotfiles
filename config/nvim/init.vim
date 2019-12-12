" Plug.vim
call plug#begin(stdpath('data') . '/plugged')

" A universal set of sane defaults for VIM
Plug 'tpope/vim-sensible'

" Comment stuff out.
Plug 'tpope/vim-commentary'

" File Drawer
Plug 'scrooloose/nerdtree'

" FZF Fuzzy Finder wrapper for VIM
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" Insert or delete brackets, parens, quotes in pars
Plug 'jiangmiao/auto-pairs'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" Linting
Plug 'dense-analysis/ale'
let g:ale_fixers = {
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
  \    'reason': ['refmt']
\}
let g:ale_fix_on_save = 1


""" JS / ES / React
" ES6 Syntax Highlighting
Plug 'othree/yajs.vim'

" JSX Syntax Highlighting with TSX support
Plug 'MaxMEllon/vim-jsx-pretty'

" LSP Client for NEOVIM
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio']
    \ }

" React Styled Components
"Plug 'styled-components/vim-styled-components'
call plug#end()


filetype plugin indent on

" Resize window with arrow keys
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>

" Move between windows
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-h> <C-w><C-h>
nmap <C-l> <C-w><C-l>

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
"set listchars=tab:▷ ,trail:⋅,nbsp:⋅,eol:¬

set ignorecase
set smartcase
set incsearch
set showmatch

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","
let g:mapleader=","

inoremap <C-E> <End>
inoremap <C-A> <Home>

" yy yanks the line already - so please, Y behave like D and C
nnoremap Y y$

" Utilize FZF
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>ff :Files<CR>

" Use prettier to format JS source code
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

" Useful LSP shortcuts
nnoremap <leader>l :call LanguageClient_contextMenu()<CR>
nnoremap K :call LanguageClient#textDocument_hover()<CR>
nnoremap gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>r :call LanguageClient#textDocument_rename()<CR>

" Shut up
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
