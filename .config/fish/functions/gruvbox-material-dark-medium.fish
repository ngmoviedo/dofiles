# base16-fish (https://github.com/tomyun/base16-fish)
# based on base16-shell (https://github.com/chriskempson/base16-shell)
# Gruvbox dark, medium scheme by Dawid Kurek (dawikur@gmail.com), morhetz (https://github.com/morhetz/gruvbox)

function gruvbox-material-dark-medium -d "Gruvbox dark, medium"
  set color00 66/5c/54 # Base 00 - Black
  set color01 ea/69/62 # Base 08 - Red
  set color02 a9/b6/65 # Base 0B - Green
  set color03 e7/8a/4e # Base 0A - Yellow
  set color04 7d/ae/a3 # Base 0D - Blue
  set color05 d3/86/9b # Base 0E - Magenta
  set color06 89/b4/82 # Base 0C - Cyan
  set color07 d4/be/98 # Base 05 - White
  set color08 92/83/74 # Base 03 - Bright Black
  set color09 $color01 # Base 08 - Bright Red
  set color10 $color02 # Base 0B - Bright Green
  set color11 d8/a6/57 # Base 0A - Bright Yellow
  set color12 $color04 # Base 0D - Bright Blue
  set color13 $color05 # Base 0E - Bright Magenta
  set color14 $color06 # Base 0C - Bright Cyan
  set color15 $color07 # Base 07 - Bright White
  set colorfg $color07 # Base 05 - White
  set colorbg 28/28/28 # Base 00 - Black



  function put_template; printf '\033]4;%d;rgb:%s\033\\' $argv; end;
  function put_template_var; printf '\033]%d;rgb:%s\033\\' $argv; end;
  function put_template_custom; printf '\033]%s%s\033\\' $argv; end;


  # 16 color space
  put_template 0  $color00
  put_template 1  $color01
  put_template 2  $color02
  put_template 3  $color03
  put_template 4  $color04
  put_template 5  $color05
  put_template 6  $color06
  put_template 7  $color07
  put_template 8  $color08
  put_template 9  $color09
  put_template 10 $color10
  put_template 11 $color11
  put_template 12 $color12
  put_template 13 $color13
  put_template 14 $color14
  put_template 15 $color15

  # set syntax highlighting colors
  set -U fish_color_autosuggestion a89984
  set -U fish_color_cancel -r
  set -U fish_color_command green #white
  set -U fish_color_comment a89984
  set -U fish_color_cwd green
  set -U fish_color_cwd_root red
  set -U fish_color_end brblack #blue
  set -U fish_color_error red
  set -U fish_color_escape yellow #green
  set -U fish_color_history_current --bold
  set -U fish_color_host normal
  set -U fish_color_match --background=brblue
  set -U fish_color_normal normal
  set -U fish_color_operator blue #green
  set -U fish_color_param d4be98 
  set -U fish_color_quote yellow #brblack
  set -U fish_color_redirection cyan
  set -U fish_color_search_match bryellow --background=a89984 
  set -U fish_color_selection white --bold --background=a89984
  set -U fish_color_status red
  set -U fish_color_user brgreen
  set -U fish_color_valid_path --underline
  set -U fish_pager_color_completion normal
  set -U fish_pager_color_description yellow --dim
  set -U fish_pager_color_prefix white --bold #--underline
  set -U fish_pager_color_progress brwhite --background=cyan

  # remember current theme
  set -U theme gruvbox-material-dark-medium

  # clean up
  functions -e put_template put_template_var put_template_custom
end
