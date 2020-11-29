" Autoclose parenthesis and brackets
" Autoclose and position cursor to write inside
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" Autoclose with ; and position cursor to write text inside
inoremap '; '';<left><left>
inoremap "; "";<left><left>
inoremap (; ();<left><left>
inoremap [; [];<left><left>
inoremap {; {};<left><left>
" Autoclose but allow skipping over the closing character
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
" Autoclose and position cursor after the closing character
inoremap '<tab> ''
inoremap "<tab> ""
inoremap (<tab> ()
inoremap [<tab> []
inoremap {<tab> {}
" Autoclose with ; and position cursor after
inoremap ';<tab> '';
inoremap ";<tab> "";
inoremap (;<tab> ();
inoremap [;<tab> [];
inoremap {;<tab> {};
" Autoclose 2 lines below and position cursor in the middle 
inoremap '<CR> '<CR>'<ESC>O
inoremap "<CR> "<CR>"<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap {<CR> {<CR>}<ESC>O
" Autoclose 2 lines below adding ; and position cursor in the middle 
inoremap ';<CR> '<CR>';<ESC>O
inoremap ";<CR> "<CR>";<ESC>O
inoremap (;<CR> (<CR>);<ESC>O
inoremap [;<CR> [<CR>];<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" Write just opening character
inoremap 1' '
inoremap 1" "
inoremap 1( (
inoremap 1[ [
inoremap 1{ {
" Brackets previously visually selected text 
vnoremap _' <ESC>`>a'<ESC>`<i'<ESC>
vnoremap _" <ESC>`>a"<ESC>`<i"<ESC>
vnoremap _( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap _[ <ESC>`>a]<ESC>`<i[<ESC>
vnoremap _{ <ESC>`>a}<ESC>`<i{<ESC>
" Gateway Tab
"inoremap <Tab> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
