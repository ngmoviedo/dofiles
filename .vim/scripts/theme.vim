" Themes and colours
" Color scheme
set termguicolors
set background=dark
let g:gruvbox_material_background = 'soft'
colorscheme gruvbox-material
set fillchars=""

" Airline styling
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" GUI font
if has("gui_running")
	set guifont=JetBrains\ Mono\ Nerd\ Font\ 13
endif

" Fix for kitty terminal
let &t_ut=''
