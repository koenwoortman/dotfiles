" ~> Load plugins
call plug#begin('~/.local/share/nvim/plugged')

" ~> Interface
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-vinegar'

" ~> Syntax
Plug 'dag/vim-fish'
Plug 'stanangeloff/php.vim'

" ~> Coding
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" ~> For fuzzy finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ~> For personal notes
Plug 'vimwiki/vimwiki'
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

" ~> Keep some screen space
set scrolloff=3

" ~> Use spacebar as leader
let mapleader = "\<Space>"

" ~> Statusline
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=\ %f

" ~> FZF
nmap <leader>p :GFiles<CR>
nmap <leader>P :Files<CR>
nmap <leader>b :Buffers<CR>

" ~> Vimwiki config
let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
