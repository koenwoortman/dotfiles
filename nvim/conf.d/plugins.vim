" ~> Load plugins
call plug#begin('~/.local/share/nvim/plugged')

" ~> Interface
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-vinegar'

" ~> Coding
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

" ~> Autocomplete
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" ~> Fuzzy finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ~> For personal notes
Plug 'vimwiki/vimwiki'

" ~> Language: fish
Plug 'dag/vim-fish'

" ~> Language: php
Plug 'stanangeloff/php.vim'

" ~> Language: javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'

" ~> Language: bash/bats
Plug 'aliou/bats.vim'

" ~> Language: toml
Plug 'cespare/vim-toml'

" ~> Language: python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

call plug#end()

" ~> Gruvbox
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1

" ~> Vimwiki config
let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
