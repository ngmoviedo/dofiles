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
Plug 'lervag/vimtex', {'for': 'tex'}

" Autocompletion and snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Better concealing for LaTeX
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Pair matching
Plug 'vim-scripts/matchit.zip'

" Commentary
Plug 'tpope/vim-commentary'

" Surround
Plug 'tpope/vim-surround'

" Repeat
Plug 'tpope/vim-repeat'

" MATLAB edition (witch matchit integration)
Plug 'vim-scripts/MatlabFilesEdition', {'for': 'matlab'}

" Pandoc support
Plug 'vim-pandoc/vim-pandoc', {'for': 'pandoc'}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'pandoc'}

" Fish syntax highlighting
Plug 'dag/vim-fish', {'for': 'fish'}

" Color schemes
Plug 'sainnhe/gruvbox-material'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vinegar (file explorer)
Plug 'tpope/vim-vinegar'

" Autoclose pairs
Plug 'raimondi/delimitmate'

" Resize windows
Plug 'camspiers/lens.vim'
Plug 'camspiers/animate.vim'

" Change line numbers type
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Better substitutions
Plug 'osyo-manga/vim-over'

" Easy motions
Plug 'easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()

" Change line numbers
nnoremap <silent> <C-n> :set relativenumber!<cr>

" Indent guides
" (there's an space at the end)
set listchars=tab:\¦\ 
set list

" OverCommandLine for substitutions
nnoremap <silent> <F2> :OverCommandLine <CR>
nnoremap <silent> S :OverCommandLine <CR> :%s/

" Usual clipboard mappings
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d
set clipboard=unnamedplus " Allows yanking and pasting to and from clipboard

" Change leader to space
let mapleader = " "

" Autocompletion
source ~/.vim/autocompletion.vim

" Themes and colors
source ~/.vim/theme.vim

" File explorer (netrw)
source ~/.vim/netrw.vim

" Easymotion
source ~/.vim/easymotion.vim

