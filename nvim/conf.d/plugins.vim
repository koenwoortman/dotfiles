" ~> Load plugins
call plug#begin('~/.local/share/nvim/plugged')

" ~> Interface
Plug 'airblade/vim-gitgutter'
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
call plug#end()
