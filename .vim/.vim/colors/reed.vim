set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "reed"

" Vim interface colors
hi Normal         ctermfg=7     ctermbg=0     cterm=NONE
hi Cursor         ctermfg=0     ctermbg=7     cterm=NONE
hi CursorLine     ctermfg=NONE  ctermbg=234   cterm=NONE
hi CursorLineNr   ctermfg=2     ctermbg=NONE  cterm=NONE 
hi LineNr         ctermfg=8     ctermbg=NONE  cterm=NONE
hi MatchParen     ctermfg=0     ctermbg=7     cterm=NONE
hi Visual         ctermfg=15    ctermbg=8    cterm=NONE

" General syntax highlighting
hi String         ctermfg=2     ctermbg=NONE  cterm=NONE
hi Comment        ctermfg=8     ctermbg=NONE  cterm=NONE
hi Type           ctermfg=3     ctermbg=NONE  cterm=NONE
hi Special        ctermfg=13    ctermbg=NONE  cterm=NONE
hi Constant       ctermfg=7     ctermbg=NONE  cterm=NONE
hi Statement      ctermfg=4     ctermbg=NONE  cterm=NONE
hi Error          ctermfg=7     ctermbg=1     cterm=NONE
hi PreProc        ctermfg=4     ctermbg=0     cterm=NONE
hi Identifier     ctermfg=6    ctermbg=0     cterm=NONE

" Vimscript syntax highlight
hi vimLineComment ctermfg=8     ctermbg=0     cterm=NONE

" Diff Stuff
hi DiffAdd                  guifg=#cee318   ctermfg=2    guibg=Black  ctermbg=0   gui=NONE      cterm=NONE      term=NONE
hi DiffDelete               guifg=#ff6600   ctermfg=9    guibg=Black  ctermbg=0   gui=NONE      cterm=NONE      term=NONE
hi DiffText                 guifg=#529bcc   ctermfg=12   guibg=Black  ctermbg=0   gui=NONE      cterm=NONE      term=NONE
hi DiffChange               guifg=LightGray ctermfg=252  guibg=Black  ctermbg=0   gui=NONE      cterm=NONE      term=NONE

hi ErrorMsg ctermbg=0
hi YcmErrorLine ctermbg=0
hi YcmErrorSection ctermbg=0
hi YcmErrorSign ctermbg=1


