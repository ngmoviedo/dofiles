" netrw
let g:netrw_liststyle = 1
let g:netrw_browse_split = 3
let g:netrw_winsize = 25 
let g:netrw_altv = 1
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " Hide dot files (unhide with gh)

" ranger (rnvimr)
let g:rnvimr_action={'<C-t>': 'NvimEdit tabedit','<C-b>': 'NvimEdit split','<C-h>': 'NvimEdit vsplit','gw': 'JumpNvimCwd','yw': 'EmitRangerCwd'}
let g:rnvimr_enable_picker=1
nnoremap <silent> <F2> :RnvimrToggle<CR>
tnoremap <silent> <F2> <C-\><C-n>:RnvimrToggle<CR>

" NERDTree
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <Space>e :NERDTreeFocus<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeMinimalUI = v:true " Hide help text
