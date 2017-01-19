" -------------------------------------------------------------------------------- 
" NeoBundle config
" -------------------------------------------------------------------------------- 

if has('vim_starting')
  " Required:
  set runtimepath+=/home/reed/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/reed/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/vimproc.vim', {'build': {'linux': 'make'}}
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'benekastah/neomake'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'ap/vim-css-color'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'tpope/vim-fugitive'
" Language Specific Stuff

" Node Development
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'digitaltoad/vim-pug.git'
NeoBundle 'pangloss/vim-javascript'

" Coffeescript
NeoBundle 'kchmck/vim-coffee-script'

" Scala
NeoBundle 'derekwyatt/vim-scala'

" Ruby
NeoBundle 'fishbullet/deoplete-ruby'

" R
NeoBundle 'jalvesaq/Nvim-R'

" Latex
NeoBundle 'vim-latex/vim-latex'

" Required:
call neobundle#end()


" Required:
filetype plugin indent on
syntax on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
