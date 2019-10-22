" ============================================================================
" PLUGINS {{{
" ============================================================================
call plug#begin('~/.local/share/nvim/plugged')

" UI
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

" Colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

" Syntax
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'styled-components/vim-styled-components'
Plug 'StanAngeloff/php.vim'

" Edit
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'

" Work in progress
Plug '~/self/flut.vim'

call plug#end()
" }}}

" File type detection filetype on
filetype plugin on
filetype indent on

" Prevent VIM from beeping
set novisualbell
set noerrorbells

" Relative line numbers
set number
set relativenumber
set scrolloff=3

" No linebreaks in the middle of a word
set linebreak

" Always show signcolumns
set signcolumn=yes

" Hide current mode, since it is shown in statusline
set noshowmode

" Hide the intro message
set shortmess=I

" Search
set smartcase

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix

set list listchars=tab:>-,trail:-,eol:¬

" True color support for the terminal
set termguicolors
colorscheme onedark

" Map leader key to space bar
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" Edit init.vim configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>
" Reload init.vim configuration file
nnoremap <Leader>vr :so $MYVIMRC<CR>

nnoremap <Leader>pi :PlugInstall<CR>

nnoremap <Leader>se :UltiSnipsEdit<CR>

nnoremap <Leader>gdf :GitGutterToggle<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>bw :w<CR>:bd<CR>
nnoremap <Leader>q :bd<CR>

nnoremap <Leader>e :GFiles<CR>
nnoremap <Leader>E :Files<CR>

nnoremap <Leader>h :bprev<CR>
nnoremap <Leader>l :bnext<CR>

nnoremap <silent> <Leader>p  :<C-u>CocList commands<cr>
nnoremap <silent> <Leader>r :<C-u>CocList outline<CR>

nmap <Leader>fb :NERDTreeToggle<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>rn <Plug>(coc-rename)

" Disable bad keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <PageUp> <nop>
noremap <PageDown> <nop>
noremap <Home> <nop>
noremap <End> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <PageUp> <nop>
inoremap <PageDown> <nop>
inoremap <Home> <nop>
inoremap <End> <nop>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c = ''
let g:airline_section_y = ''
let g:airline_section_x = ''
let g:airline_section_z = ''

" define where snippets are stored
let g:UltiSnipsSnippetDirectories = [ '~/.config/coc/ultisnips' ]

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" If you don't want vim-gitgutter to set up any mappings at all, use this:
let g:gitgutter_map_keys = 0
