" Plugins
set runtimepath+=~/.local/share/nvim/site " the neovim one

" Themes and colours
" Color scheme
set termguicolors
colorscheme dracula

" Indentation rules
let g:indent_blankline_filetype_exclude = 'man'
let g:indent_blankline_buftype_exclude = 'nofile'

" Usual clipboard mappings
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d
