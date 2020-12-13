set runtimepath+=~/.local/share/nvim/site
call plug#begin(stdpath('data') . '/plugged')
Plug 'sainnhe/gruvbox-material'
call plug#end()
" Themes and colours
" Color scheme
"set termguicolors
set background=dark
let g:gruvbox_material_background = 'medium'
colorscheme gruvbox-material
