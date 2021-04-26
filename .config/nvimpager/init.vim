" Plugins
" Do not run :PlugClean from nvimpager!
set runtimepath+=~/.local/share/nvim/site " the neovim one
call plug#begin(stdpath('data') . '/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" Themes and colours
" Color scheme
set termguicolors
colorscheme dracula

" Usual clipboard mappings
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d
