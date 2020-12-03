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
set number relativenumber " Enable line numbers
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
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" MATLAB edition 
Plug 'vim-scripts/MatlabFilesEdition', {'for': 'matlab'}

" Pandoc edition
Plug 'vim-pandoc/vim-pandoc', {'for': 'pandoc'}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'pandoc'}

" Fish syntax highlighting
Plug 'dag/vim-fish', {'for': 'fish'}

" Autocompletion, linting and snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'dense-analysis/ale'

" Pair matching and autoclose tools
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'

" Comment lines out
Plug 'tpope/vim-commentary'

" Repeat plugin actions
Plug 'tpope/vim-repeat'

" Comfortable motions, visual substitutions and line numering
Plug 'easymotion/vim-easymotion'
Plug 'osyo-manga/vim-over'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Color schemes and status bar
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Distraction free edition
Plug 'junegunn/goyo.vim'

" File manager (netrw) improvements
Plug 'tpope/vim-vinegar'

" Auto resize windows
Plug 'camspiers/lens.vim'
Plug 'camspiers/animate.vim'
"
" Initialize plugin system
call plug#end()

" Change leader to space
let mapleader = " "

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

" Distraction mode
nmap <F3> :Goyo<cr>

" Autocompletion and linting
source ~/.vim/scripts/autocompletion.vim

" Themes and colors
source ~/.vim/scripts/theme.vim

" File explorer (netrw)
source ~/.vim/scripts/netrw.vim

" Easymotion
source ~/.vim/scripts/easymotion.vim

