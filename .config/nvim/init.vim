" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set scrolloff=1		" Always show at least one line above/below the cursor.

" Plugin configuration (vim-plug)
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin(stdpath('data') . '/plugged')
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Startup page
Plug 'mhinz/vim-startify'

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
"Plug 'vim-scripts/matchit.zip'
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

" Initialize plugin system
call plug#end()

" Change leader to space
let mapleader = " "

" Don't highlight matching pair
set noshowmatch

" Change line numbers
set number relativenumber " Enable line numbers
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
source ~/.config/nvim/scripts/autocompletion.vim

" Themes and colors
source ~/.config/nvim/scripts/theme.vim

" File explorer (netrw)
source ~/.config/nvim/scripts/netrw.vim

" Easymotion
source ~/.config/nvim/scripts/easymotion.vim

