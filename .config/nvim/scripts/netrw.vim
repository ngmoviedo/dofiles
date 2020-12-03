" File explorer (netrw)
let g:netrw_liststyle = 1
let g:netrw_browse_split = 0
let g:netrw_winsize = 25 
let g:netrw_altv = 1
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " Hide dot files (unhide with gh)
let g:lens#disabled_filetypes = ['netrw']
" augroup ProjectDrawer " Automatically opens netrw if no file is indicated
"     autocmd!
"     autocmd VimEnter * if argc() == 0 | Explore! | endif
" augroup END
