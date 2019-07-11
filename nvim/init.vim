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

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" ~> Enable all Python syntax highlighting features
let python_highlight_all = 1

" ~> Trim whitespace function
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" ~> Trim whitespaces on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Coc Styling
hi CocErrorSign   guifg=#ff0000 guibg=#ebdab4
hi CocWarningSign guifg=#ff922b guibg=#ebdab4
hi CocInfoSign    guifg=#15aabf guibg=#ebdab4
hi CocHintSign    guifg=#15aabf guibg=#ebdab4

hi default link CocErrorHighlight CocHighlightText
hi default link CocWarningSign CocHighlightText
hi default link CocInfoHighlight CocHighlightText
hi default link CocHintHighlight CocHighlightText
