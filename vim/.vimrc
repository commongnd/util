syntax enable
colorscheme monokai
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Display line number
set number

" Insert a line below but stay in view mode
nmap oo o<Esc>k

" Insert a line above but stay in view mode
nmap OO O<Esc>j
imap jj <Esc>
