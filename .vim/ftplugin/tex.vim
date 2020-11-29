" LaTeX (vimtex)
" PDF viewer 
let g:vimtex_view_method = 'zathura'
hi clear SpellBad
hi SpellBad cterm=underline gui=undercurl


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
" Quotes and math
let b:delimitMate_quotes = "$ \" '"
" Simple brackets
inoremap \[ \[\]<left><left>
inoremap \{ \{\}<left><left>
" Centering brackets
inoremap \[<CR> \[<CR>\]<ESC>O
inoremap \{<CR> \{<CR>\}<ESC>O
" Scalable parenthesis and brackets
inoremap \( \left(\right)<left><left><left><left><left><left><left>
inoremap \[ \left[\right]<left><left><left><left><left><left><left>
inoremap \{ \left\{\right\}<left><left><left><left><left><left><left><left>
" Jump over closing character
inoremap <S-Tab> <Esc>/[$)}\]\|>]<CR>:nohl<CR>a
