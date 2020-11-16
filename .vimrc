 " All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number relativenumber		" Enable line numbers
set scrolloff=1		" Always show at least one line above/below the cursor.

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Plugin configuration (vim-plug)
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" LaTeX edition
Plug 'lervag/vimtex'

" Git integration
Plug 'tpope/vim-fugitive'

" Autocompletion and snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Better concealing for LaTeX
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Pair matching
Plug 'vim-scripts/matchit.zip'

" MATLAB edition (witch matchit integration)
Plug 'vim-scripts/MatlabFilesEdition'

" Pandoc support
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Fish syntax highlighting
Plug 'dag/vim-fish'

" Color schemes
Plug 'sainnhe/gruvbox-material'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vinegar (file explorer)
Plug 'tpope/vim-vinegar'

" Autoclose pairs
Plug 'raimondi/delimitmate'

" Resize
"Plug 'roman/golden-ratio'
Plug 'camspiers/lens.vim'
Plug 'camspiers/animate.vim'

" Change line numbers type
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Better substitutions
Plug 'osyo-manga/vim-over'

" Initialize plugin system
call plug#end()

" Change line numbers
nnoremap <silent> <C-n> :set relativenumber!<cr>

" OverCommandLine for substitutions
nnoremap <silent> <F2> :OverCommandLine <CR>

" Usual clipboard mappings
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d
set clipboard=unnamedplus " Allows yanking and pasting to and from clipboard

" Change leader
let mapleader = " "

" LaTeX (vimtex)
" PDF viewer 
let g:vimtex_view_method = 'zathura'

" TOC viewer
let g:lens#disabled_filenames = ['Table of contents*']
au FileType tex,latex map º :VimtexTocToggle <CR>

" Dictionary
let g:tex_flavor = "latex"
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=es
set spellfile=~/.vim/spell/dict_es.add

" Concealment
set conceallevel=2
let g:tex_conceal = 'abdmg'


" Autocompletion
" coc.nvim snippets. Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Snippet navigation
let g:coc_snippet_next = '<tab>'

" coc.nvim recommended setting
source ~/.vim/cocrc.vim
let g:airline#extensions#coc#enabled = 1


" Pandoc configuration (spelling and completion)
let g:pandoc#spell#default_langs=["es"]


" Autoclose 
" General
"source ~/.vim/autoclose.vim " delimitmate is enough
" LaTeX
au FileType tex,latex let b:delimitMate_quotes = "$ \" '"
autocmd BufRead,BufNewFile *.tex source ~/.vim/autoclose_latex.vim
" Markdown (pandoc)
autocmd BufRead,BufNewFile *.md source ~/.vim/autoclose_markdown.vim


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


" File explorer (netrw)
let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_browse_split = 0
let g:netrw_winsize = 25 
let g:netrw_altv = 1
let g:lens#disabled_filetypes = ['netrw']
augroup ProjectDrawer " Automatically opens netrw if no file is indicated
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END




" MATLAB code checker
"autocmd BufEnter *.m compiler /usr/local/MATLAB/R2019b/bin/glnxa64/mlint
"autocmd BufEnter *.m compiler mlint
