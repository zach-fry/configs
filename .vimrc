set nocompatible                "make vim act as vim not vi
set backspace=indent,eol,start  "make backspace work as we want
set enc=utf8                    "set encoding to utf8
set nu                          "set line numbers

"set indentation
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set some search stuff
set incsearch
set hlsearch
set ignorecase

"tab mappings
map gb gT

"toggle line wrap off
set wrap!

"syntax hilighting on
syntax on

"auto close braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"work for pasting
set pastetoggle=<F2>

"some typos and other commands
command! Q q
command! W w
command! Wq wq
command! WQ wq
map <C-z> u

" Mapping shortcut to remove highlight
nnoremap <space> :nohl<CR>

"
" Python Specific Code
"
" comment line, selection with Ctrl-N,Ctrl-N
au BufEnter *.py nnoremap  <C-n><C-n> mn:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR>:noh<CR>`n
au BufEnter *.py inoremap  <C-n><C-n> <C-O>mn<C-O>:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR><C-O>:noh<CR><C-O>`n
au BufEnter *.py vnoremap  <C-n><C-n> mn:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR>:noh<CR>gv`n<Esc>

" uncomment line, selection with Ctrl-N,N
au BufEnter *.py nnoremap  <C-n>n mn:s/^\(\s*\)#\(\s*\)/\1\2/ge<CR>:s/^#$//ge<CR>:noh<CR>`n
au BufEnter *.py inoremap  <C-n>n <C-O>mn<C-O>:s/^\(\s*\)#\(\s*\)/\1\2/ge<CR><C-O>:s/^#$//ge<CR><C-O>:noh<CR><C-O>`n
au BufEnter *.py vnoremap  <C-n>n mn:s/^\(\s*\)#\(\s*\)/\1\2/ge<CR>gv:s/#\n/\r/ge<CR>:noh<CR>gv`n<Esc>

"bind F5 to run python code in buffer
filetype indent plugin on
autocmd BufRead *.py nmap <F5> :!python %<CR>
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

"remove trailing whitespace from python files
autocmd BufWritePre *.py :%s/\s\+$//e

"pathogen
execute pathogen#infect()

"syntastic
" On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
	\ 'active_filetypes': ['python', 'py'],
	\ 'passive_filetypes': ['html'] }
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
"syntastic python
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore="E225,E226,E228,E231,E501,E302,E261,E701,E241,E126,E127,E128,W801"'
"
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

"GUI Specific Settings
set guifont=Consolas:h14
set vb

"jellybeans color scheme
color jellybeans
let g:jellybeans_use_lowcolor_black = 0

"Map NerdTree
map <F10> <Esc>:NERDTreeToggle<CR>

"CTRLP
"Set CtrlP Plugin to use the Current Directory for Search
let g:ctrlp_working_path_mode = 'a'
"Set No Limit For File Cache
let g:ctrlp_max_files = 0

"Tagbar
nmap <F4> <ESC>:TagbarToggle<CR><c-w>l

"filetype detection
autocmd BufNewFile,BufRead *.carbon set ft=groovy
