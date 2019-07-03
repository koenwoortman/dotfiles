" Load config files
for f in split(glob('~/.config/nvim/conf.d/*.vim'), '\n')
  exe 'source' f
endfor

" ~> Break compatibility with VI
set nocompatible

" ~> Set colors
syntax on
set termguicolors

colorscheme gruvbox
set background=light
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1

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

" Better display for messages
set cmdheight=2

" ~> Search
set smartcase

" ~> Show newline
set list listchars=tab:\ \ ,trail:-,eol:¬

" ~> No linebreaks in the middle of a word
set linebreak

" ~> Keep some screen space
set scrolloff=3

" always show signcolumns
set signcolumn=yes

" ~> Enable all Python syntax highlighting features
let python_highlight_all = 1

" ~> Vimwiki config
let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
