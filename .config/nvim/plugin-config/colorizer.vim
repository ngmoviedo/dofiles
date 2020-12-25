
" Colorizer (must be after termguicolors)
lua <<
require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
  '!vim'; -- Exclude vim from highlighting.
  '!pandoc';
  '!tex';
  '!matlab';
}
