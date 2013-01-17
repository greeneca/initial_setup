filetype plugin on
filetype indent on

set nocompatible
set autoindent
set smartindent
set shiftwidth=2

set showmatch
set ruler
set incsearch

set virtualedit=all

syntax on

set directory=~/.vim/tmp
set backup
set backupdir=~/.vim/backup

set list
"set listchars=tab:>-,trail:-
set listchars=tab:>-

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Trailing whitespace
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\s\+$', -1)

set expandtab
set nowrap

set shiftwidth=2
set softtabstop=2
set tabstop=8

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

map <F8> :tabn<CR>
map <F7> :tabp<CR>

map <S-Right> :n<CR>
map <S-Left> :prev<CR>
