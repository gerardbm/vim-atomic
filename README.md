Atomic is a dark & light color scheme designed to use on vim, gvim and neovim. It consists of 16 colors selected procedurally (algorithms) and it's part of a bigger project: [Atomic](https://github.com/gerardbm/atomic), which includes themes and color schemes for more code editors (Sublime Text and NetBeans), terminals (URxvt, XTerm, xfce4-terminal and konsole) and some terminal programs (tmux, zsh, irssi, cmus).

## Installation

### Manual installation

1. Copy the file `atomic.vim` to your `~/.vim/colors/` directory (for Vim) or `~/.config/nvim/colors/` directory (for Neovim).

```bash
$ cd vim-atomic
$ cp atomic.vim ~/.vim/colors/
```

### Automatic installation ([vim-plug](https://github.com/junegunn/vim-plug))

1. Paste this in your `.vimrc` file:
```viml
Plug 'gerardbm/vim-atomic'
```
2. Reload your settings and install it:
```viml
:source $MYVIMRC
:PlugInstall
```
3. Set the colorscheme in your `.vimrc` configuration file:
```viml
colorscheme atomic
```

## Vim / Neovim

If you use terminal versions of vim and neovim, you will need to configure your terminal with the same colors. Take a look at the main Atomic repository to see if Atomic is available for your terminal and how to install it.

## Gvim

If you are in a GUI for Vim (as gvim), you have the following commands to switch between scheme modes:
	- (1) `AtomicDarkBlueSoft`: sets the dark blue mode (default).
	- (2) `AtomicDarkBlueHard`: sets the dark blue mode, +5% contrast.
	- (3) `AtomicDarkCyanSoft`: sets the dark cyan mode.
	- (4) `AtomicDarkCyanHard`: sets the dark cyan mode, +5% contrast.
	- (5) `AtomicNightOrangeSoft`: sets the night orange mode.
	- (6) `AtomicNightOrangeHard`: sets the night orange mode, +5% contrast.
	- (7) `AtomicNightRedSoft`: sets the night red mode.
	- (8) `AtomicNightRedHard`: sets the night red mode, +5% contrast.
	- (9) `AtomicLightSoft`: sets the light mode.
	- (10) `AtomicLightHard`: sets the light mode, +5% contrast.

You can switch them automatically depending on the current time. For example, to use the AtomicLightSoft version between 8 AM and 8 PM, and switch to AtomicNightRedHard at night, simply paste this in your `.gvimrc`:

```viml
function! AtomicSwitcher()
	if (strftime("%H") > 8) && (strftime("%H") < 20)
		AtomicLightSoft
	else
		AtomicNightRedHard
	endif
endfunction
```

Alternatively, you can cycle them (from 1 to  10) with a shortcut. Paste this in your `.gvimrc`:

```viml
nnoremap <S-F9> :call CycleModes()<CR>:colorscheme atomic<CR>
vnoremap <S-F9> :<C-u>call CycleModes()<CR>:colorscheme atomic<CR>gv
```
