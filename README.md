# Atomic for Vim/Neovim

Vim-atomic is a dark & light color scheme designed to use on vim, gvim and neovim. It consists of 16 colors selected procedurally (algorithms) and it's part of a bigger project: [Atomic](https://github.com/gerardbm/atomic), which also includes themes and color schemes for terminals (URxvt, XTerm) and some terminal programs (tmux, zsh, irssi, cmus).

![Atomic Space Screenshot](https://github.com/gerardbm/vim-atomic/blob/master/img/Atomic-Space-Screenshot.png)

![Atomic Night Screenshot](https://github.com/gerardbm/vim-atomic/blob/master/img/Atomic-Night-Screenshot.png)

![Atomic Light Screenshot](https://github.com/gerardbm/vim-atomic/blob/master/img/Atomic-Light-Screenshot.png)

![Testing dark modes in vim](https://github.com/gerardbm/vim-atomic/blob/master/img/vim.png)

Atomic has support for 8, 16 and 256 colors, and *True Color* (24 bits) on the last versions of vim, gvim, neovim and nvim-qt. It uses the setting `termguicolors` properly (some color schemes don't).

It also includes 7 modes of color (6 darks and 1 light):
- Space mode is dark with blue hue (240°).
- Onion mode is dark with purple hue (300°).
- Blood mode is dark with red hue (0°).
- Night mode is dark with orange hue (60°).
- Grass mode is dark with green hue (120°).
- Ocean mode is dark with cyan hue (180°).
- Light mode is light with orange hue (60°).

Each mode has 3 contrasts:

- High contrast (HC), +4%
- Medium contrast (MC), 0
- Low contrast (LC), -4%

## Installation

#### Manual installation

1. Copy the file `atomic.vim` to your `~/.vim/colors/` directory (for vim) or `~/.config/nvim/colors/` directory (for neovim).

```bash
$ cd vim-atomic
$ cp atomic.vim ~/.vim/colors/
```

#### Using a plugin manager (i.e., [vim-plug](https://github.com/junegunn/vim-plug))

1. Paste this in your `.vimrc` file:
```viml
Plug 'gerardbm/vim-atomic'
```
2. Reload your settings and install it:
```viml
:source $MYVIMRC
:PlugInstall
```

#### Modify your .vimrc

1. Set the colorscheme in your `.vimrc` configuration file:
```viml
syntax enable
colorscheme atomic
```

## Configuration

#### Color support

If your terminal does not support *True color*, you can take a look at the main [Atomic](https://github.com/gerardbm/atomic) repository to see if Atomic colors are available for your terminal and how to install them.

If your terminal supports *True color* (1), you can enable it configuring your `~/.vimrc` file with the setting `set termguicolors` (2) **before** the color scheme definition (`colorscheme atomic`).

---

1. See [https://gist.github.com/XVilka/8346728](https://gist.github.com/XVilka/8346728) for a list of terminals that support *True color*.

2. Sometimes setting `termguicolors` is not enough and one has to set the `t_8f` and `t_8b` options explicitly, also **before** the color scheme definition:

```viml
if has("termguicolors")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
```

Use it when `$TERM` is not `xterm`, for example, running vim into tmux or using a terminal with different `$TERM`, like st case.

More info, see `:h xterm-true-color`.

#### Color palettes

If your terminal have *True color* support or if you are using a GUI (like gvim or nvim-qt), you have the following commands to switch between the different color palettes:

- (1) `AtomicSpaceHC`: sets the space mode (blue hue, dark background) in hard contrast (+4%).
- (2) `AtomicSpaceMC`: sets the space mode (blue hue, dark background) in medium contrast (default).
- (3) `AtomicSpaceLC`: sets the space mode (blue hue, dark background) in hard contrast (-4%).
- (4) `AtomicOnionHC`: sets the onion mode (purple hue, dark background) in hard contrast (+4%).
- (5) `AtomicOnionMC`: sets the onion mode (purple hue, dark background) in medium contrast (default).
- (6) `AtomicOnionLC`: sets the onion mode (purple hue, dark background) in hard contrast (-4%).
- (7) `AtomicBloodHC`: sets the blood mode (red hue, dark background) in hard contrast (+4%).
- (8) `AtomicBloodMC`: sets the blood mode (red hue, dark background) in medium contrast (default).
- (9) `AtomicBloodLC`: sets the blood mode (red hue, dark background) in hard contrast (-4%).
- (10) `AtomicNightHC`: sets the night mode (orange hue, dark background) in hard contrast (+4%).
- (11) `AtomicNightMC`: sets the night mode (orange hue, dark background) in medium contrast (default).
- (12) `AtomicNightLC`: sets the night mode (orange hue, dark background) in hard contrast (-4%).
- (13) `AtomicGrassHC`: sets the grass mode (green hue, dark background) in hard contrast (+4%).
- (14) `AtomicGrassMC`: sets the grass mode (green hue, dark background) in medium contrast (default).
- (15) `AtomicGrassLC`: sets the grass mode (green hue, dark background) in hard contrast (-4%).
- (16) `AtomicOceanHC`: sets the ocean mode (cyan hue, dark background) in hard contrast (+4%).
- (17) `AtomicOceanMC`: sets the ocean mode (cyan hue, dark background) in medium contrast (default).
- (18) `AtomicOceanLC`: sets the ocean mode (cyan hue, dark background) in hard contrast (-4%).
- (19) `AtomicLightHC`: sets the light mode (orange hue, light background) in hard contrast (+4%).
- (20) `AtomicLightMC`: sets the light mode (orange hue, light background) in medium contrast (default).
- (21) `AtomicLightLC`: sets the light mode (orange hue, light background) in hard contrast (-4%).

Use one of them **after** the color scheme definition in your `~/.vimrc` or `~/.gvimrc`.

Switch them automatically depending on the current time. For example, if you would like to use the AtomicLightHC between 8 am and 8 pm and switch to AtomicNightHC at night, simply paste this in your `~/.vimrc` or `~/.gvimrc`:

```viml
function! AtomicSwitcher()
	if (strftime('%H') > 8) && (strftime('%H') < 20)
		AtomicLightHC
	else
		AtomicNightHC
	endif
endfunction
```

Alternatively, you can cycle them (from 1 to 9) with a shortcut (for example: <kbd>Shift</kbd>+<kbd>F9</kbd>). Paste this in your `~/.vimrc` or `~/.gvimrc`:

```viml
nnoremap <S-F9> :call CycleModes()<CR>:colorscheme atomic<CR>
```
#### Emphasis

Some terminals don't handle italics correctly, so in case you need to disable italics set `let g:atomic_italic=0` in your `~/.vimrc`, **before** the color scheme definition.

Full list of options to disable italic text, bold, underline and undercurl:

```viml
let g:atomic_italic = 0
let g:atomic_bold = 0
let g:atomic_underline = 0
let g:atomic_undercurl = 0
```

If this options are not defined, default value is 1 for all of them.

#### Example configuration

```viml
if has("termguicolors")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

syntax enable

let g:atomic_italic = 0
colorscheme atomic
AtomicNightMC
```
