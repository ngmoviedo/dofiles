# Yet another dotfiles repository by an obsesive Arch user
Main relevant dotfiles from my current setup. I use Arch, but they will probably work in most GNU/Linux distributions.

The colors have been chosen to match [Dracula](https://github.com/morhetz/gruvbox).

Some keys have been remapped via *Xmodmap*. Notably *Caps Lock* to *Escape*.

## System details

### WM: i3-gaps

[i3-gaps](https://github.com/Airblader/i3) is used as window manager with its default *dmenu* as application launcher. Key bindings are slightly modified to match *vi*'s. *i3lock* is used as screen locker. Wallpaper is handled by [feh](https://github.com/derf/feh). For more details see [i3's config file](https://github.com/ngmoviedo/dofiles/blob/master/.config/i3/config).

### Status bar: Polybar

Custom modules to control brightness (redshift), sound output and display updates (from Arch repositories, AUR and Flatpak). Main bar is located at the top and tray is at the bottom, hidden by default. Can be toggled with alt+t.

### GTK and QT themes

GTK theme and icons are [the official ones from the *Dracula* project](https://draculatheme.com/gtk). Qt engine is [Kvantum](https://draculatheme.com/gtk) and the theme: [Ant-Dracula KDE](https://store.kde.org/p/1370681/)

### Shell: Fish

[Fish](https://github.com/fish-shell/fish-shell) is used as main shell. Some plugins were added (using the [fisher](https://github.com/jorgebucaran/fisher) plugin manager):

- [replay](https://github.com/jorgebucaran/replay.fish) for easily executing bash commands keeping the environment changes in fish.
- [thefuck](https://github.com/oh-my-fish/plugin-thefuck) for integration with [The Fuck](https://github.com/nvbn/thefuck).
- [budspencer](https://github.com/oh-my-fish/theme-budspencer). Amazing theme which includes many useful functions and git integration.
- [sudope](https://github.com/oh-my-fish/plugin-sudope). For adding *sudo* when you forget.
- [z](https://github.com/jethrokuan/z). Port of [z](https://github.com/rupa/z) for fish.
- [wttr](https://github.com/oh-my-fish/plugin-wttr). Displays weather forecast (and moon phases) in the shell.
- [autopair](https://github.com/jorgebucaran/autopair.fish). Autocloses parenthesis and quotes.
- [dracula](https://github.com/dracula/fish). *Dracula* theme.

### Editor: Neovim

[Neovim](https://github.com/neovim/neovim) as the do-it-all text editor. Its configuration is mostly oriented to *LaTeX* and *markdown* edition. Also focuses on improving *MATLAB* integration. It relies heavily on the built-in LSP. See the [neovim repo](https://github.com/ngmoviedo/neovim-configuration) for more details.

Linting on *MATLAB* and *fish* scripts is achieved thanks to [efm-langserver](https://github.com/mattn/efm-langserver).

### Pager

[nvimpager](https://github.com/lucc/nvimpager)

### PDF viewer: Zathura

[Zathura-mupdf](https://github.com/pwmt/zathura-pdf-mupdf) is used a PDF reader. For its *vi* keybindings and *synctex* support. [neovim-remote](https://aur.archlinux.org/packages/neovim-remote/), available on the AUR, is necesary for reverse search support.

Color scheme: [dracula](https://draculatheme.com/zathura)

### Image viewer

- [feh](https://github.com/derf/feh)


### Compositor

- [picom](https://github.com/yshui/picom)

### File managers

- [Ranger](https://github.com/ranger/ranger). With this plugins:
	- [ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons)
	- [ranger-zjumper](https://github.com/ask1234560/ranger-zjumper)
	- [highlight](http://www.andre-simon.de/doku/highlight/en/highlight.php)
- [PCManFM-qt](https://github.com/lxqt/pcmanfm-qt). Made transparent through picom.

### Browser: Firefox

Set up to show tabs on the left side and removing the upper ones via [css](https://github.com/ngmoviedo/dofiles/blob/f4dcecba929200e0d5dfcaca04cb670cc74d1fd9/.mozilla/firefox/sd1hctw3.default-release/chrome/userChrome.css). Uses *vi*-like keybindings. The relevant plugins used for this config are:

- [Tree Style Tab](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
- [Tree Style Tab Mouse Wheel](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab-mouse-wheel/)
- [Vim Vixen](https://addons.mozilla.org/en-US/firefox/addon/vim-vixen/)
- Theme: [dracula](https://draculatheme.com/firefox)

### Brightness control

- [redshift](https://github.com/jonls/redshift)

### Notifications

- [dunst](https://github.com/dunst-project/dunst)


# Other useful programs I use and recommend

### Mail reader: Thunderbird

Some plugins I use:

- [Auto Address Cleaner T](https://addons.thunderbird.net/en-US/thunderbird/addon/auto-address-cleaner-t/)
- [Emoji](https://addons.thunderbird.net/es/thunderbird/addon/emojiaddin/)
- [Provider for Google Calendar](https://addons.thunderbird.net/en-US/thunderbird/addon/provider-for-google-calendar/)
- [quickFilters](https://addons.thunderbird.net/en-US/thunderbird/addon/quickfilters/?src=userprofile)
- [tbkeys-lite](https://addons.thunderbird.net/en-US/thunderbird/addon/tbkeys-lite/?src=search)
- [Thunderbird Conversations](https://addons.thunderbird.net/en-US/thunderbird/addon/gmail-conversation-view/?src=userprofile)

- Theme: [Dracula](https://addons.thunderbird.net/en-US/thunderbird/addon/dracula-theme-for-thunderbird/?src=userprofile)

### Power management

- xfce4-power-manager
- [caffeine-ng](https://github.com/caffeine-ng/caffeine-ng). Available on the AUR.

### Network management

- nm-applet (part of GNOME)

### Phone sync

- kdeconnect
- [indicator-kdeconnect](https://github.com/Bajoja/indicator-kdeconnect)

### Password manager

- [keepassxc](https://keepassxc.org/)

