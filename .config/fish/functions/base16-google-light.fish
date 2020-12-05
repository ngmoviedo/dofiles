# base16-fish-shell (https://github.com/FabioAntunes/base16-fish-shell)
# Inspired by base16-shell (https://github.com/chriskempson/base16-shell)
# Google Light scheme by Seth Wright (http://sethawright.com)

function base16-google-light -d "base16 Google Light theme"
    set options (fish_opt --short=t --long=test)
    argparse $options -- $argv
    set padded_seq_values (seq -w 0 21)

    # colors
    set color00 "ff/ff/ff" # Base 00 - Black
    set color01 "cc/34/2b" # Base 08 - Red
    set color02 "19/88/44" # Base 0B - Green
    set color03 "fb/a9/22" # Base 0A - Yellow
    set color04 "39/71/ed" # Base 0D - Blue
    set color05 "a3/6a/c7" # Base 0E - Magenta
    set color06 "39/71/ed" # Base 0C - Cyan
    set color07 "37/3b/41" # Base 05 - White
    set color08 "b4/b7/b4" # Base 03 - Bright Black
    set color09 $color01 # Base 08 - Bright Red
    set color10 $color02 # Base 0B - Bright Green
    set color11 $color03 # Base 0A - Bright Yellow
    set color12 $color04 # Base 0D - Bright Blue
    set color13 $color05 # Base 0E - Bright Magenta
    set color14 $color06 # Base 0C - Bright Cyan
    set color15 "1d/1f/21" # Base 07 - Bright White
    set color16 "f9/6a/38" # Base 09
    set color17 "39/71/ed" # Base 0F
    set color18 "e0/e0/e0" # Base 01
    set color19 "c5/c8/c6" # Base 02
    set color20 "96/98/96" # Base 04
    set color21 "28/2a/2e" # Base 06
    set color_foreground "37/3b/41" # Base 05
    set color_background "ff/ff/ff" # Base 00

    # 16 color space
    __put_template 0  $color00
    __put_template 1  $color01
    __put_template 2  $color02
    __put_template 3  $color03
    __put_template 4  $color04
    __put_template 5  $color05
    __put_template 6  $color06
    __put_template 7  $color07
    __put_template 8  $color08
    __put_template 9  $color09
    __put_template 10 $color10
    __put_template 11 $color11
    __put_template 12 $color12
    __put_template 13 $color13
    __put_template 14 $color14
    __put_template 15 $color15

    # 256 color space
    __put_template 16 $color16
    __put_template 17 $color17
    __put_template 18 $color18
    __put_template 19 $color19
    __put_template 20 $color20
    __put_template 21 $color21

    # foreground / background / cursor color
    if test -n "$ITERM_SESSION_ID"
      # iTerm2 proprietary escape codes
      __put_template_custom Pg 373b41 # foreground
      __put_template_custom Ph ffffff # background
      __put_template_custom Pi 373b41 # bold color
      __put_template_custom Pj c5c8c6 # selection color
      __put_template_custom Pk 373b41 # selected text color
      __put_template_custom Pl 373b41 # cursor
      __put_template_custom Pm ffffff # cursor text

    else
      __put_template_var 10 $color_foreground
      if test "$BASE16_SHELL_SET_BACKGROUND" != false
        __put_template_var 11 $color_background
        if string match -q -- '*rxvt*' $TERM
          __put_template_var 708 $color_background # internal border (rxvt)
        end
      end
      __put_template_custom 12 ";7" # cursor (reverse video)
    end

    set -gx fish_color_autosuggestion "b4b7b4" brblack
    set -gx fish_pager_color_description "f96a38" yellow

    __base16_fish_shell_set_background "ff" "ff" "ff"
    __base16_fish_shell_create_vimrc_background google-light
    set -U base16_fish_theme google-light

    if test -n "$_flag_t"
        set base16_colors
        for seq_value in $padded_seq_values
            set base16_colors $base16_colors $seq_value
        end
        set base16_colors $base16_colors

        __base16_fish_shell_color_test $base16_colors
    end
end
