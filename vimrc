version 7
"set background=dark
call pathogen#infect()
syntax on
colorscheme jellybeans
set mouse=a
"set shiftwidth=4
"set tabstop=4
"set cinoptions=+0
set title
set incsearch
set hlsearch
set showmode
set modeline
set backspace=indent,eol,start

let mapleader = ","
let g:mapleader = ","

"set statusline=%<%1*===\ %5*%f%1*%(\ ===\ %4*%h%1*%)%(\ ===\ %4*%m%1*%)%(\ ===\ %4*%r%1*%)\ ===%====\ %2*%b(0x%B)%1*\ ===\ %3*%l,%c%V%1*\ ===\ %5*%P%1*\ ===%0* laststatus=2

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nmap <F11> :NERDTreeToggle<CR>
noremap <leader>q :Bclose<CR>
nmap <C-left> <C-W><Left>
nmap <C-right> <C-W><Right>
nmap <C-up> <C-W><Up>
nmap <C-down> <C-W><Down>

filetype plugin indent on
