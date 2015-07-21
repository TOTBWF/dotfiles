" General Set Up
set secure
set nocompatible

" Get the Fucking Clipboard working
set clipboard=unnamedplus

" General Filetype Stuff
filetype off
syntax on

" Activate Vundle
set rtp+=/home/reed/.vim/bundle/Vundle.vim

" Begin Vundle Plugin Block
call vundle#begin()

Plugin 'Vundle.vim'
Plugin 'ycm.vim'
Plugin 'hilinks.vim'
Plugin 'hexHighlight.vim'
" Plugin 'LaTeX-Box-Team/LaTeX-BOx'

" All Plugins should be declared above this line
call vundle#end()

filetype plugin on
filetype plugin indent on


" Tab Set Up
set expandtab
set tabstop=2
set shiftwidth=2
set number
set autoindent

" General Mouse Disabling
set mouse=a
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>
map <LeftMouse> <nop>

" Colors
hi Visual ctermfg=0
hi ErrorMsg ctermbg=0
hi YcmErrorLine ctermbg=0
hi YcmErrorSection ctermbg=0
hi YcmErrorSign ctermbg=0
hi Search ctermbg=0 ctermfg=7
colorscheme monochrome 

" Tab navigation
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>
nnoremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <C-S-P> :HLT<CR>

