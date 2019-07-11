" ~> Load plugins
call plug#begin('~/.local/share/nvim/plugged')

" ~> Interface
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-vinegar'

" ~> Coding
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
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

" ~> Closetag
let g:closetag_filenames = '*.html,*.jsx,*.tsx'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" ~> Emmet
" let g:user_emmet_expandabbr_key='<Tab>'
" imap <silent> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" ~> Gruvbox
let g:gruvbox_contrast_light = 'medium'
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1

" ~> Vimwiki config
let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ~> Coc
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Show commands

" Show all diagnostics
nnoremap <silent> <leader>a  :<C-u>CocList diagnostics<cr>

" Manage extensions
nnoremap <silent> <leader>e  :<C-u>CocList extensions<cr>

" Show commands
nnoremap <silent> <leader>c  :<C-u>CocList commands<cr>

" Search workspace symbols
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>

" Search document symbols
nnoremap <silent> <leader>r  :<C-u>CocList outline<cr>
