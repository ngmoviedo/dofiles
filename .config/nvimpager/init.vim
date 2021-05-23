" Themes and colours
" Color scheme
set runtimepath+=~/.local/share/nvim/site/pack/packer/start/dracula
set termguicolors
colorscheme dracula

" Usual clipboard mappings
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d
