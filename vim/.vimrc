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

nmap oo o<Esc>k
nmap OO O<Esc>j
imap jj <Esc>
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

" For CScope
set nocscopeverbose
map <F5> :!cscope -bR<CR>:cs reset<CR><CR>
" Use F11 for adding database for the first time. Note: it uses cs kill & add
" instead of reset since reloading of the database doesn't seem to work
" properly with the reset command
map <F11> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
  \:!cscope -b -i cscope.files -f cscope.out<CR>
  \:cs kill -1<CR>:cs add cscope.out<CR>

" Vim cursor change (for Cygwin only)
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" For Airline
let g:airline_theme='simple'
set laststatus=2
let g:airline_powerline_fonts = 1

" For CtrlP to set the scope to current working directory for searches
let g:ctrlp_cmd='CtrlP :pwd'

" Show spaces
":set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set listchars=eol:↲,tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
:set list
