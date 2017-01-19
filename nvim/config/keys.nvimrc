" -------------------------------------------------------------------------------- 
" Keybindings
" -------------------------------------------------------------------------------- 

" Set the leader key
let mapleader = ","

" Tab Stuff
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>

" Function Keys
nnoremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <F5> :set cursorline! cursorline?<CR>

"deoplete tab complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

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
