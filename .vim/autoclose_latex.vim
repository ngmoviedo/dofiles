" Math mode
" Inline
"inoremap $ $$<left>
" Centered
"inoremap $$ $$$$<left><left>
inoremap \[<CR> \[<CR>\]<ESC>0
" Scalable parenthesis and brackets
inoremap \( \left(\right)<left><left><left><left><left><left><left>
inoremap \[ \left[\right]<left><left><left><left><left><left><left>
inoremap \{ \{\}<left><left>
inoremap \{ \left{\right}<left><left><left><left><left><left><left>
" Norm
inoremap \| \|\\|<left><left>
" Gateway
"inoremap <Tab> <Esc>/[$)}\]\|>]<CR>:nohl<CR>a
