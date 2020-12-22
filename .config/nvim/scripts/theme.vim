" Themes and colours
" Color scheme
if has('termguicolors')
  set termguicolors
endif
" set background=dark
" let g:gruvbox_material_background = 'medium'
" colorscheme gruvbox-material
colorscheme dracula

set fillchars=""

let g:gruvbox_material_diagnostic_line_highlight = 1
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

" Colorizer (must be after termguicolors)
lua require'colorizer'.setup()

