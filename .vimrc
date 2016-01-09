" General Set Up
set secure
set nocompatible

" Get the Fucking Clipboard working
set clipboard=unnamedplus

" General Filetype Stuff
filetype off

" Activate Vundle
set rtp+=/home/reed/.vim/bundle/Vundle.vim

" Begin Vundle Plugin Block
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'file:///home/reed/.vim/bundle/vim-monochrome'
Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/syntastic'
" Language/Filetype Specific Stuff

" VimScript
Plugin 'kergoth/vim-hilinks'
" Latex
" Plugin 'LaTeX-Box-Team/LaTeX-BOx'
" Racket
Plugin 'wlangstroth/vim-racket.git'
Plugin 'luochen1990/rainbow'
"Glsl
Plugin 'tikhomirov/vim-glsl'
" Haskell Shit
Plugin 'eagletmt/ghcmod-vim'
" Rust
Plugin 'rust-lang/rust.vim'

" All Plugins should be declared above this line
call vundle#end()

filetype plugin indent on
syntax on

let g:rainbow_conf = {
  \ 'ctermfgs': [4, 5, 6, 12, 13, 14]
  \}
let g:rainbow_active = 0

" Tab Set Up
set expandtab
set tabstop=2
set shiftwidth=2
set number
set autoindent

" Set the leader key
let mapleader = ","

" General Mouse Disabling
set mouse=a

"           Scroll Wheel = Up/Down 4 lines
" Control + Scroll Wheel = Up/Down 1/2 page
let g:mouse_enabled=1
function! ToggleMouse()
  if g:mouse_enabled
    noremap <ScrollWheelUp>      <NOP>
    noremap <ScrollWheelDown>    <NOP>
    noremap <C-ScrollWheelUp>    <NOP>
    noremap <C-ScrollWheelDown>  <NOP>
    inoremap <ScrollWheelUp>     <NOP>
    inoremap <ScrollWheelDown>   <NOP>
    inoremap <C-ScrollWheelUp>   <NOP>
    inoremap <C-ScrollWheelDown> <NOP>
    let g:mouse_enabled=0
  else 
    noremap <ScrollWheelUp>      4<C-Y>
    noremap <ScrollWheelDown>    4<C-E>
    noremap <C-ScrollWheelUp>    <C-U>
    noremap <C-ScrollWheelDown>  <C-D>
    inoremap <ScrollWheelUp>     <C-O>4<C-Y>
    inoremap <ScrollWheelDown>   <C-O>4<C-E>
    inoremap <C-ScrollWheelUp>   <C-O><C-U>
    inoremap <C-ScrollWheelDown> <C-O><C-D>
    let g:mouse_enabled=1
  endif
endfunction
" Call it to disable by default
call ToggleMouse()

nnoremap <silent><F9> :call ToggleMouse()<CR>

" Colors
colorscheme reed

" Make Paste toggle
"augroup paste_autocmd
"  autocmd!
"  autocmd InsertLeave *
"        \ if exists('s:paste') |
"        \   let &paste = s:paste |
"        \   let &mouse = s:mouse |
"        \   unlet s:paste |
"        \   unlet s:mouse |
"        \ endif
"augroup END

"function! s:setup_paste() abort
"  let s:paste = &paste
"  let s:mouse = &mouse
"  set paste
"  set mouse =
"endfunction

"nnoremap <silent> :call <SID>setup_paste()<CR>
"nnoremap <silent><Leader>p :call <SID>setup_paste()<CR>


" Tab navigation
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>
nnoremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <F5> :set cursorline! cursorline?<CR>
nnoremap <Leader>h :HLT!<CR>

" Syntastic Stuff
let g:syntastic_auto_loc_list=1
map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>

" Haskell Bindings
au Filetype haskell nnoremap <buffer> <F1> :GhcModType<CR>
au Filetype haskell nnoremap <buffer> <silent> <F2> :GhcModTypeClear<CR>
au Filetype haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

hi ghcmodType ctermbg=237
let g:ghcmod_type_highlight = 'ghcmodType'

" C Bindings
au Filetype c nnoremap <F1> :make!<CR>

" Rust Bindings
autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
au Filetype rust nnoremap <F1> :make! build<CR>
au Filetype rust nnoremap <F2> :make! run<CR>

