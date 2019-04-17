" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" ~> Load plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'dag/vim-fish'
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'stanangeloff/php.vim'
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

" ~> Tabs
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" ~> Line numbers
set number
set relativenumber

" ~> Allow for project specific vimrc's
set exrc
set secure

" ~> Ale config
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'php': ['phpcbf']
\}
let g:ale_linters = {
\   'php': ['php', 'phpcs', 'phpmd', 'phpstan'],
\}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1
let g:ale_php_phpcs_use_global = 1
let g:ale_php_phpcbf_use_global = 1
let g:ale_php_phpcs_standard = '~/m2mobi/m2mobi-coding-standard/M2mobi'
let g:ale_php_phpcbf_standard = '~/m2mobi/m2mobi-coding-standard/M2mobi'
let g:ale_php_phpstan_level = 4

" ~> Deoplete config
let g:deoplete#enable_at_startup = 1

" ~> Vimwiki config
let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
