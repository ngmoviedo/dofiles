" LaTeX (vimtex)
" PDF viewer 
let g:vimtex_view_method = 'zathura'
hi clear SpellBad
hi SpellBad ctermfg=NONE ctermbg=000 cterm=none gui=undercurl


" TOC viewer
let g:lens#disabled_filenames = ['Table of contents*']
map º :VimtexTocToggle <CR>

" Dictionary
let g:tex_flavor = "latex"
setlocal spell spelllang=es
set spellfile=~/.vim/spell/dict-es.add

" Concealment
set conceallevel=2
let g:tex_conceal = 'abdmg'
augroup vimrc " Only in normal mode
  autocmd!
  autocmd InsertEnter *.tex set conceallevel=0
  autocmd InsertLeave *.tex set conceallevel=2
augroup END

" Autoclose
let b:delimitMate_quotes = "$ \" '"
