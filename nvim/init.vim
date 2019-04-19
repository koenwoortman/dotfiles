" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" ~> Load plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dag/vim-fish'
Plug 'mhartington/nvim-typescript'
Plug 'morhetz/gruvbox'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
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

" ~> Show newline
set list listchars=tab:>\ ,trail:-,eol:¬

" ~> Ale config
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'php': ['phpcbf']
\}
let g:ale_linters = {
\   'php': ['php', 'phpcs', 'phpmd'],
\}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1
let g:ale_php_phpcs_use_global = 1
let g:ale_php_phpcbf_use_global = 1
let g:ale_php_phpcs_standard = '~/m2mobi/m2mobi-coding-standard/M2mobi'
let g:ale_php_phpcbf_standard = '~/m2mobi/m2mobi-coding-standard/M2mobi'
let g:ale_php_phpstan_level = 1


"   <leader>; - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
"
" ~> Denite config
nmap <leader>; :Denite buffer -split=floating -winrow=1<CR>
nmap <leader>t :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'auto_resize': 1,
\ 'prompt': 'λ:',
\ 'direction': 'rightbelow',
\ 'winminheight': '10',
\ 'highlight_mode_insert': 'Visual',
\ 'highlight_mode_normal': 'Visual',
\ 'prompt_highlight': 'Function',
\ 'highlight_matched_char': 'Function',
\ 'highlight_matched_range': 'Normal',
\ 'split': 'floating'
\ }}


" ~> Deoplete config
" let g:deoplete#enable_at_startup = 1

" ~> Neosnippet config
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" ~> Vimwiki config
let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
