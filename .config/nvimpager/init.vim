set runtimepath+=~/.local/share/nvim/site
call plug#begin(stdpath('data') . '/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
" Themes and colours
" Color scheme
set termguicolors
" set background=dark
" let g:gruvbox_material_background = 'medium'
" colorscheme gruvbox-material
colorscheme dracula

" Fix for kitty terminal
let &t_ut=''

" Show/hide line numbers
set number
nmap <C-N> :set invnumber<CR>

" Usual clipboard mappings
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d
