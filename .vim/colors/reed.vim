set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "reed"

" Vim Syntax Colors
hi vimString      ctermfg=15    ctermbg=NONE  cterm=NONE
hi vimHighlight   ctermfg=07    ctermbg=NONE  cterm=NONE
hi vimLineComment ctermfg=08    ctermbg=NONE  cterm=NONE

" Vim Interface Colors
hi LineNr         ctermfg=15    ctermbg=NONE  cterm=NONE
hi CursorLineNr   ctermfg=12    ctermbg=NONE  cterm=NONE
hi CursorLine     ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi NonText        ctermfg=08    ctermbg=NONE  cterm=NONE
