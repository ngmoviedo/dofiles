# Yet another dotfiles repository by an obsesive Arch user
Main relevant dotfiles from my current setup. I use Arch, but they will probably work in most GNU/Linux distributions.

The colors have been chosen to match [Dracula](https://github.com/morhetz/gruvbox).


## System details

### WM: i3-gaps

[i3-gaps](https://github.com/Airblader/i3) is used as window manager with its default *dmenu* as application launcher. Key bindings are slightly modified to match *vi*'s, to control brightness (using [light](https://github.com/haikarainen/light) through function keys (F9, F10) and volume through media keys or, alternatively, +, - and *Intro* keys on the numpad. *i3lock* is used as screen locker. Wallpaper is handled by [feh](https://github.com/derf/feh). For more details see [i3's config file](https://github.com/ngmoviedo/dofiles/blob/master/.config/i3/config).

### Status bar: Polybar

Custom modules to control brightness, sound output and display updates (from Arch repositories, AUR and Flatpak). Main bar is located at the top and tray is at the bottom, hidden by default. Can be toggled with ctrl+t.

### GTK and QT themes

GTK theme and icons are [the official ones from the *Dracula* project](https://draculatheme.com/gtk). Qt engine is [Kvantum](https://draculatheme.com/gtk) and the theme: [Ant-Dracula KDE](https://store.kde.org/p/1370681/)

### Shell: Fish

[Fish](https://github.com/fish-shell/fish-shell) is used as main shell. Some plugins were added (using the [fisher](https://github.com/jorgebucaran/fisher) plugin manager):

- [replay](https://github.com/jorgebucaran/replay.fish) for easily executing bash commands keeping the environment changes in fish.
- [thefuck](https://github.com/oh-my-fish/plugin-thefuck) for integration with [The Fuck](https://github.com/nvbn/thefuck).
- [budspencer](https://github.com/ngmoviedo/theme-budspencer). Amazing theme which includes many useful functions and git integration. It's not fully compatible with fisher, so I've forked it and made some modifications.
- [sudope](https://github.com/ngmoviedo/plugin-sudope). For adding *sudo* when you forget. Has the same problem of budspencer, so I've forked it.
- [fish-async-prompt](https://github.com/acomagu/fish-async-prompt). For extra speed.
- [z](https://github.com/jethrokuan/z). Port of [z](https://github.com/rupa/z) for fish.
- [wttr](https://github.com/oh-my-fish/plugin-wttr). Displays weather forecast (and moon phases) in the shell.
- [autopair](https://github.com/jorgebucaran/autopair.fish). Autocloses parenthesis and quotes.
- [dracula](https://github.com/dracula/fish). *Dracula* theme.

### Editor: Neovim

[Neovim](https://github.com/neovim/neovim) as the do-it-all text editor. Its configuration is mostly oriented to *LaTeX* and *markdown* edition. The following plugins are used:
- Plugin manager: [vim-plug](https://github.com/junegunn/vim-plug).
- [rnvimr](https://github.com/kevinhwang91/rnvimr)
- [vim-startify](https://github.com/mhinz/vim-startify)
- [ale](https://github.com/dense-analysis/ale)
- [vim-airline](https://github.com/vim-airline/vim-airline) and [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [pear-tree](https://github.com/tmsvg/pear-tree)
- [vim-snippets](https://github.com/honza/vim-snippets)
- [vimade](https://github.com/TaDaa/vimade)
- [coc-nvim](https://github.com/neoclide/coc.nvim) with these extensions:
	- coc-vimlsp
	- coc-syntax
	- coc-snippets
	- coc-marketplace
	- coc-jedi
	- coc-dictionary
	- coc-vimtex
	- coc-sh
	- coc-fish
	- coc-floaterm
	- coc-json
	- coc-explorer
- [tex-conceal.vim](https://github.com/KeitaNakamura/tex-conceal.vim)
- [vim-repeat](https://github.com/tpope/vim-repeat)
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-vinegar](https://github.com/tpope/vim-vinegar)
- [goyo.vim](https://github.com/junegunn/goyo.vim)
- [floaterm](https://github.com/voldikss/vim-floaterm)
- [vim-over](https://github.com/osyo-manga/vim-over)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [vim-pandoc](https://github.com/vim-pandoc/vim-pandoc)
- [vim-pandoc-syntax](https://github.com/vim-pandoc/vim-pandoc-syntax)
- [vim-surround](https://github.com/tpope/vim-surround)
- [dracula](https://draculatheme.com/vim)
- [vim-fish](https://github.com/dag/vim-fish)
- [gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- [vimtex](https://github.com/lervag/vimtex)
- [vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)
- [MatlabFilesEdition](https://github.com/vim-scripts/MatlabFilesEdition)

### Pager

[nvimpager](https://github.com/lucc/nvimpager)

### PDF viewer: Zathura

[Zathura-mupdf](https://github.com/pwmt/zathura-pdf-mupdf) is used a PDF reader. For its *vi* keybindings and *synctex* support. [neovim-remote](https://aur.archlinux.org/packages/neovim-remote/), available on the AUR, is necesary for reverse search support.

Color scheme: [dracula](https://draculatheme.com/zathura)

### Image viewer

- [feh](https://github.com/derf/feh)

### Browser: Firefox

Set up to hide menu bars most of the time, show tabs on the left side and use *vi* keybindings. The relevant plugins used for this config are:

- [Tree Style Tab](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
- [Tab Count in Window Title](https://addons.mozilla.org/es/firefox/addon/tab-count-in-window-title/)
- [Tree Style Tab Mouse Wheel](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab-mouse-wheel/)
- [TST-Middleclick](https://addons.mozilla.org/en-US/firefox/addon/tst-middleclick/)
- [Vim Vixen](https://addons.mozilla.org/en-US/firefox/addon/vim-vixen/)
- Theme: [dracula](https://draculatheme.com/firefox)


### Mail reader: Thunderbird

Some plugins are used:

- [Auto Address Cleaner T](https://addons.thunderbird.net/en-US/thunderbird/addon/auto-address-cleaner-t/)
- [Emoji](https://addons.thunderbird.net/es/thunderbird/addon/emojiaddin/)
- [Provider for Google Calendar](https://addons.thunderbird.net/en-US/thunderbird/addon/provider-for-google-calendar/)
- [quickFilters](https://addons.thunderbird.net/en-US/thunderbird/addon/quickfilters/?src=userprofile)
- [tbkeys-lite](https://addons.thunderbird.net/en-US/thunderbird/addon/tbkeys-lite/?src=search)
- [Thunderbird Conversations](https://addons.thunderbird.net/en-US/thunderbird/addon/gmail-conversation-view/?src=userprofile)

- Theme: [Dracula](https://addons.thunderbird.net/en-US/thunderbird/addon/dracula-theme-for-thunderbird/?src=userprofile)

### Compositor

- [picom](https://github.com/yshui/picom)

### File managers

- [Ranger](https://github.com/ranger/ranger). With this plugins:
	- [ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons)
	- [ranger-zjumper](https://github.com/ask1234560/ranger-zjumper)
	- [highlight](http://www.andre-simon.de/doku/highlight/en/highlight.php)
- [PCManFM-qt](https://github.com/lxqt/pcmanfm-qt). Made transparent through picom.


### Power management

- xfce4-power-manager
- [caffeine-ng](https://github.com/caffeine-ng/caffeine-ng). Available on the AUR.

### Network management

- nm-applet (part of GNOME)

### Brightness control

- [light](https://github.com/haikarainen/light)
- [redshift](https://github.com/jonls/redshift)

### Notifications

- [dunst](https://github.com/dunst-project/dunst)

### Phone sync

- kdeconnect
- [indicator-kdeconnect](https://github.com/Bajoja/indicator-kdeconnect)

### Password manager

- [keepassxc](https://keepassxc.org/)

