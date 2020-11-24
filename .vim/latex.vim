" LaTeX (vimtex)
" PDF viewer 
let g:vimtex_view_method = 'zathura'
" Syntax highlighting suddenly became horrible
let g:vimtex_syntax_enabled=0

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

" Autoclose
au FileType tex,latex let b:delimitMate_quotes = "$ \" '"
autocmd BufRead,BufNewFile *.tex source ~/.vim/autoclose_latex.vim
