" Vim color file
" Info: Just the koehler theme with the status line added

hi clear
if exists("syntax_on")
  syntax reset
endif
runtime colors/koehler.vim
let g:colors_name = "koehler_status"
hi Scrollbar	guifg=white guibg=black
hi Menu			guifg=black guibg=white
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
set statusline=%<%1*===\ %5*%f%1*%(\ ===\ %4*%h%1*%)%(\ ===\ %4*%m%1*%)%(\ ===\ %4*%r%1*%)\ ===%====\ %2*%b(0x%B)%1*\ ===\ %3*%l,%c%V%1*\ ===\ %5*%P%1*\ ===%0* laststatus=2
