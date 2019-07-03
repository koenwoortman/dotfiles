" ~> Use spacebar as leader
let mapleader = "\<Space>"

" Quicker write
nmap <leader>w :w<CR>

" Quicker write and quit
nmap <leader><leader>w :wq<CR>

" Quicker write
nmap <leader>q :q<CR>

" Source $MYVIMRC
nmap <leader>rrc :so $MYVIMRC<CR>

" ~> FZF
nmap <leader>p :GFiles<CR>
nmap <leader>P :Files<CR>
nmap <leader>b :Buffers<CR>

" Disable some movement keys
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
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
vnoremap <PageUp> <nop>
vnoremap <PageDown> <nop>
vnoremap <Home> <nop>
vnoremap <End> <nop>
