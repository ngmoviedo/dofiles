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

" Don't show mode (it's already in airline)
set noshowmode

" GUI font
if has("gui_running")
	set guifont=JetBrains\ Mono\ Nerd\ Font\ 13
endif

" Fix for kitty terminal
let &t_ut=''

" Bad spelling highlight (red undercurl)
hi clear SpellBad
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
hi SpellBad     gui=undercurl guisp=red term=undercurl cterm=undercurl
