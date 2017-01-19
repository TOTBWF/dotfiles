" -------------------------------------------------------------------------------- 
" Plugin Settings
" -------------------------------------------------------------------------------- 

let g:deoplete#enable_at_startup = 1


" Deoplete Sources
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file']
let g:deoplete#sources.ruby = ['buffer', 'file', 'ruby']

" LaTex Stuff
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'zathura'
