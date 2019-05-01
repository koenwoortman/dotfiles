" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" ~> Load plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dag/vim-fish'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'stanangeloff/php.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
call plug#end()

" ~> Break compatibility with VI
set nocompatible

" ~> Set colors
syntax on
set termguicolors
colorscheme gruvbox

" ~> File type detection filetype on
filetype plugin on
filetype indent on

" ~> Prevent VIM from beeping
set novisualbell
set noerrorbells

" ~> Hide the intro message
set shortmess=I

" ~> Tabs
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" ~> Search
set smartcase

" ~> Line numbers
set number
set relativenumber

" ~> Allow for project specific vimrc's
set exrc
set secure

" ~> Search
set smartcase

" ~> Show newline
set list listchars=tab:>\ ,trail:-,eol:¬

" ~> No linebreaks in the middle of a word
set linebreak

" ~> Ale config
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1
let g:ale_php_phpcs_use_global = 1
let g:ale_php_phpcbf_use_global = 1
let g:ale_php_phpcs_standard = '~/m2mobi/m2mobi-coding-standard/M2mobi'
let g:ale_php_phpcbf_standard = '~/m2mobi/m2mobi-coding-standard/M2mobi'
let g:ale_php_phpstan_level = 1

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'php': ['phpcbf']
\}
let g:ale_linters = {
\   'php': ['php', 'phpcs', 'phpmd'],
\}

" ~> Coc
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ~> FZF
nmap <leader>p :Files<CR>
nmap <leader>b :Buffers<CR>

" ~> Vimwiki config
let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
