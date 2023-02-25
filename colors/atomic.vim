"----------------------------------------------------------------
"      ___   __                  _
"     /   | / /_____  ____ ___  (_)____
"    / /| |/ __/ __ \/ __ `__ \/ / ___/
"   / ___ / /_/ /_/ / / / / / / / /__
"  /_/  |_\__/\____/_/ /_/ /_/_/\___/
"
"----------------------------------------------------------------
"  Theme   : Atomic Color Scheme
"  Version : 6.0.0
"  License : MIT
"  Author  : Gerard Bajona
"  URL     : https://github.com/gerardbm/vim-atomic
"  Palette : https://github.com/gerardbm/atomic
"----------------------------------------------------------------

" Settings
"----------------------------------------------------------------
" Init: {{{

if v:version > 580
	highlight clear
	if exists('syntax_on')
		syntax reset
	endif
endif

let g:colors_name = 'atomic'

" }}}
" Palettes: {{{

if (has('termguicolors') && &termguicolors) || has('gui_running')
	let s:envir = 'gui'

	if exists('g:atomic_mode')
		let s:mode = g:atomic_mode
	else
		let s:mode = 1
	endif

	" Base colors 1 & 2
	" -----------------------
	if s:mode == 1
		" Space HC
		" -----------------------
		let s:base1 = '#080B0F' " L* 3%
		let s:base2 = '#0F1418' " L* 6%
	elseif s:mode == 2
		" Space MC
		" -----------------------
		let s:base1 = '#11161B' " L* 7%
		let s:base2 = '#171C22' " L* 10%
	elseif s:mode == 3
		" Space LC
		" -----------------------
		let s:base1 = '#181E24' " L* 11%
		let s:base2 = '#1E242B' " L* 14%
	elseif s:mode == 4
		" Onion HC
		" -----------------------
		let s:base1 = '#100911' " L* 3%
		let s:base2 = '#19101B' " L* 6%
	elseif s:mode == 5
		" Onion MC
		" -----------------------
		let s:base1 = '#1C121E' " L* 7%
		let s:base2 = '#231726' " L* 10%
	elseif s:mode == 6
		" Onion LC
		" -----------------------
		let s:base1 = '#261928' " L* 11%
		let s:base2 = '#2D1F30' " L* 14%
	elseif s:mode == 7
		" Blood HC
		" -----------------------
		let s:base1 = '#14080A' " L* 3%
		let s:base2 = '#1F0F12' " L* 6%
	elseif s:mode == 8
		" Blood MC
		" -----------------------
		let s:base1 = '#221114' " L* 7%
		let s:base2 = '#2A161A' " L* 10%
	elseif s:mode == 9
		" Blood LC
		" -----------------------
		let s:base1 = '#2D171C' " L* 11%
		let s:base2 = '#351D22' " L* 14%
	elseif s:mode == 10
		" Night HC
		" -----------------------
		let s:base1 = '#0D0B07' " L* 3%
		let s:base2 = '#16130E' " L* 6%
	elseif s:mode == 11
		" Night MC
		" -----------------------
		let s:base1 = '#181510' " L* 7%
		let s:base2 = '#1F1B15' " L* 10%
	elseif s:mode == 12
		" Night LC
		" -----------------------
		let s:base1 = '#211D17' " L* 11%
		let s:base2 = '#28231C' " L* 14%
	elseif s:mode == 13
		" Grass HC
		" -----------------------
		let s:base1 = '#080C07' " L* 3%
		let s:base2 = '#10150E' " L* 6%
	elseif s:mode == 14
		" Grass MC
		" -----------------------
		let s:base1 = '#121710' " L* 7%
		let s:base2 = '#171D15' " L* 10%
	elseif s:mode == 15
		" Grass LC
		" -----------------------
		let s:base1 = '#191F17' " L* 11%
		let s:base2 = '#1E261C' " L* 14%
	elseif s:mode == 16
		" Ocean HC
		" -----------------------
		let s:base1 = '#080C0B' " L* 3%
		let s:base2 = '#0F1414' " L* 6%
	elseif s:mode == 17
		" Ocean MC
		" -----------------------
		let s:base1 = '#111716' " L* 7%
		let s:base2 = '#161D1C' " L* 10%
	elseif s:mode == 18
		" Ocean LC
		" -----------------------
		let s:base1 = '#171F1E' " L* 11%
		let s:base2 = '#1D2524' " L* 14%
	elseif s:mode == 19
		" Light HC
		" -----------------------
		let s:base1 = '#FBF6EE' " L* 97%
		let s:base2 = '#F6EDE0' " L* 94%
	elseif s:mode == 20
		" Light MC
		" -----------------------
		let s:base1 = '#F6E9D7' " L* 93%
		let s:base2 = '#F0E0CA' " L* 90%
	elseif s:mode == 21
		" Light LC
		" -----------------------
		let s:base1 = '#F2DDBD' " L* 89%
		let s:base2 = '#EBD4B1' " L* 86%
	endif

	" Base colors 3 & 4
	" -----------------------
	if s:mode == 1 || s:mode == 2 || s:mode == 3
		" Space
		" -----------------------
		let s:base3 = '#67798B' " L* 50%
		let s:base4 = '#91A8C1' " L* 68%
	elseif s:mode == 4 || s:mode == 5 || s:mode == 6
		" Onion
		" -----------------------
		let s:base3 = '#906A97' " L* 50%
		let s:base4 = '#BB9BC2' " L* 68%
	elseif s:mode == 7 || s:mode == 8 || s:mode == 9
		" Blood
		" -----------------------
		let s:base3 = '#A56572' " L* 50%
		let s:base4 = '#C69BA2' " L* 68%
	elseif s:mode == 10 || s:mode == 11 || s:mode == 12
		" Night
		" -----------------------
		let s:base3 = '#827562' " L* 50%
		let s:base4 = '#B5A38A' " L* 68%
	elseif s:mode == 13 || s:mode == 14 || s:mode == 15
		" Grass
		" -----------------------
		let s:base3 = '#687D62' " L* 50%
		let s:base4 = '#92AE89' " L* 68%
	elseif s:mode == 16 || s:mode == 17 || s:mode == 18
		" Ocean
		" -----------------------
		let s:base3 = '#657C78' " L* 50%
		let s:base4 = '#8DACA8' " L* 68%
	elseif s:mode == 19 || s:mode == 20 || s:mode == 21
		" Light
		" -----------------------
		let s:base3 = '#4F4537' " L* 30%
		let s:base4 = '#84755E' " L* 50%
	endif

	" Accent colors
	" -----------------------
	if s:mode >= 1 && s:mode <= 18
		" Dark background
		" -----------------------
		" Dark accent colors
		let s:acb50 = '#00A7F0' " |
		let s:acv50 = '#EA65FF' " |
		let s:acr50 = '#FF6C91' " | L* 65%
		let s:aco50 = '#C59700' " |
		let s:acg50 = '#55B300' " |
		let s:acc50 = '#00B1A4' " |

		" Light accent colors
		let s:acb70 = '#6CACDF' " |
		let s:acv70 = '#D38CE0' " |
		let s:acr70 = '#E58C9F' " | L* 68%
		let s:aco70 = '#C3A161' " |
		let s:acg70 = '#78B560' " |
		let s:acc70 = '#66B3AA' " |
	else
		" Light background
		" -----------------------
		" Dark accent colors
		let s:acb50 = '#006492' " |
		let s:acv50 = '#A400B6' " |
		let s:acr50 = '#BC004F' " | L* 40%
		let s:aco50 = '#775A00' " | (instead of 65%)
		let s:acg50 = '#306B00' " |
		let s:acc50 = '#006A62' " |

		" Light accent colors
		let s:acb70 = '#007EB7' " |
		let s:acv70 = '#CD00E2' " |
		let s:acr70 = '#EA0064' " | L* 50%
		let s:aco70 = '#957200' " | (instead of 68%)
		let s:acg70 = '#3F8700' " |
		let s:acc70 = '#00867C' " |
	endif

	" Commands
	command! AtomicSpaceHC        let g:atomic_mode = 1 | set background=dark
				\ | colorscheme atomic
	command! AtomicSpaceMC        let g:atomic_mode = 2 | set background=dark
				\ | colorscheme atomic
	command! AtomicSpaceLC        let g:atomic_mode = 3 | set background=dark
				\ | colorscheme atomic

	command! AtomicOnionHC        let g:atomic_mode = 4 | set background=dark
				\ | colorscheme atomic
	command! AtomicOnionMC        let g:atomic_mode = 5 | set background=dark
				\ | colorscheme atomic
	command! AtomicOnionLC        let g:atomic_mode = 6 | set background=dark
				\ | colorscheme atomic

	command! AtomicBloodHC        let g:atomic_mode = 7 | set background=dark
				\ | colorscheme atomic
	command! AtomicBloodMC        let g:atomic_mode = 8 | set background=dark
				\ | colorscheme atomic
	command! AtomicBloodLC        let g:atomic_mode = 9 | set background=dark
				\ | colorscheme atomic

	command! AtomicNightHC        let g:atomic_mode = 10 | set background=dark
				\ | colorscheme atomic
	command! AtomicNightMC        let g:atomic_mode = 11 | set background=dark
				\ | colorscheme atomic
	command! AtomicNightLC        let g:atomic_mode = 12 | set background=dark
				\ | colorscheme atomic

	command! AtomicGrassHC        let g:atomic_mode = 13 | set background=dark
				\ | colorscheme atomic
	command! AtomicGrassMC        let g:atomic_mode = 14 | set background=dark
				\ | colorscheme atomic
	command! AtomicGrassLC        let g:atomic_mode = 15 | set background=dark
				\ | colorscheme atomic

	command! AtomicOceanHC        let g:atomic_mode = 16 | set background=dark
				\ | colorscheme atomic
	command! AtomicOceanMC        let g:atomic_mode = 17 | set background=dark
				\ | colorscheme atomic
	command! AtomicOceanLC        let g:atomic_mode = 18 | set background=dark
				\ | colorscheme atomic

	command! AtomicLightHC        let g:atomic_mode = 19 | set background=light
				\ | colorscheme atomic
	command! AtomicLightMC        let g:atomic_mode = 20 | set background=light
				\ | colorscheme atomic
	command! AtomicLightLC        let g:atomic_mode = 21 | set background=light
				\ | colorscheme atomic

	function! CycleModes()
		let s:cycle = g:atomic_mode

		if s:cycle == 1
			let g:atomic_mode = 2
		elseif s:cycle == 2
			let g:atomic_mode = 3
		elseif s:cycle == 3
			let g:atomic_mode = 4
		elseif s:cycle == 4
			let g:atomic_mode = 5
		elseif s:cycle == 5
			let g:atomic_mode = 6
		elseif s:cycle == 6
			let g:atomic_mode = 7
		elseif s:cycle == 7
			let g:atomic_mode = 8
		elseif s:cycle == 8
			let g:atomic_mode = 9
		elseif s:cycle == 9
			let g:atomic_mode = 10
		elseif s:cycle == 10
			let g:atomic_mode = 11
		elseif s:cycle == 11
			let g:atomic_mode = 12
		elseif s:cycle == 12
			let g:atomic_mode = 13
		elseif s:cycle == 13
			let g:atomic_mode = 14
		elseif s:cycle == 14
			let g:atomic_mode = 15
		elseif s:cycle == 15
			let g:atomic_mode = 16
		elseif s:cycle == 16
			let g:atomic_mode = 17
		elseif s:cycle == 17
			let g:atomic_mode = 18
		elseif s:cycle == 18
			let g:atomic_mode = 19
		elseif s:cycle == 19
			let g:atomic_mode = 20
		elseif s:cycle == 20
			let g:atomic_mode = 21
		elseif s:cycle == 21
			let g:atomic_mode = 1
		endif
	endfunction
else
	let s:envir = 'cterm'

	if &t_Co == 8
		let s:base1 = 0
		let s:base2 = 0
		let s:base3 = 7
		let s:base4 = 7
		" ---------
		let s:acb50 = 4
		let s:acv50 = 5
		let s:acr50 = 1
		let s:aco50 = 3
		let s:acg50 = 2
		let s:acc50 = 6
		" ---------
		let s:acb70 = 4
		let s:acv70 = 5
		let s:acr70 = 1
		let s:aco70 = 3
		let s:acg70 = 2
		let s:acc70 = 6
	else
		let s:base1 = 0
		let s:base2 = 8
		let s:base3 = 7
		let s:base4 = 15
		" ---------
		let s:acb50 = 4
		let s:acv50 = 5
		let s:acr50 = 1
		let s:aco50 = 3
		let s:acg50 = 2
		let s:acc50 = 6
		" ---------
		let s:acb70 = 12
		let s:acv70 = 13
		let s:acr70 = 9
		let s:aco70 = 11
		let s:acg70 = 10
		let s:acc70 = 14
	endif
endif

" }}}
" Emphasis: {{{

" none
let s:non = 'NONE'

" reverse
let s:rev = 'reverse'

" italic
if exists('g:atomic_italic')
	let g:atomic_italic = g:atomic_italic
else
	let g:atomic_italic = 1
endif

let s:itl = 'italic'
if g:atomic_italic == 0
	let s:itl = 'NONE'
endif

" bold
if exists('g:atomic_bold')
	let g:atomic_bold = g:atomic_bold
else
	let g:atomic_bold = 1
endif

let s:bld = 'bold'
if g:atomic_bold == 0
	let s:bld = 'NONE'
endif

" underline
if exists('g:atomic_underline')
	let g:atomic_underline = g:atomic_underline
else
	let g:atomic_underline = 1
endif

let s:unl = 'underline'
if g:atomic_underline == 0
	let s:unl = 'NONE'
endif

" undercurl
if exists('g:atomic_undercurl')
	let g:atomic_undercurl = g:atomic_undercurl
else
	let g:atomic_undercurl = 1
endif

let s:unc = 'undercurl'
if g:atomic_undercurl == 0
	let s:unc = 'NONE'
endif

" }}}

" Colorscheme
"----------------------------------------------------------------
" UI: {{{

execute 'hi Normal '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi LineNr '       . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi NonText '      . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi SpecialKey '   . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------.
execute 'hi Search '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:bld . ' cterm=' . s:bld
execute 'hi MatchParen '                                     . s:envir . 'bg=' . s:non . ' gui=' . s:bld . ' cterm=' . s:bld
" -------------------------.
execute 'hi TabLine '      . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:base3 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi TabLineSel '   . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:acc50 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi TabLineFill '  . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base2 . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------.
execute 'hi StatusLine '   . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base2 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi StatusLineNC ' . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base2 . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------.
execute 'hi WildMenu '     . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:acc50 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VertSplit '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Directory '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi SignColumn '   . s:envir . 'bg=' . s:base1 . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------.
execute 'hi ModeMsg '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi MoreMsg '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------.
execute 'hi Question '     . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi WarningMsg '   . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi ErrorMsg '     . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------.
execute 'hi Folded '       . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base2 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi FoldColumn '   . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Selection: {{{
execute 'hi Visual '       . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:base3

" }}}
" Spelling: {{{

execute 'hi SpellBad     ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl
execute 'hi SpellCap     ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl
execute 'hi SpellLocal   ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl
execute 'hi SpellRare    ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl

" }}}
" Diff: {{{

execute 'hi DiffAdd '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi DiffAdded '    . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi DiffChange '   . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi DiffDelete '   . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi DiffRemoved '  . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi DiffText '     . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:bld . ' cterm=' . s:bld

" }}}
" PMenu: {{{

execute 'hi PMenu '        . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' gui=' . s:non . ' cterm=' . s:rev
execute 'hi PMenuSel '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' gui=' . s:non . ' cterm=' . s:rev
execute 'hi PMenuSbar '    . s:envir . 'bg=' . s:base4
execute 'hi PMenuThumb '   . s:envir . 'bg=' . s:acc50

" }}}
" Cursor: {{{

execute 'hi ColorColumn '  . s:envir . 'bg=' . s:base2 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi CursorColumn ' . s:envir . 'bg=' . s:base2 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi CursorLine '   . s:envir . 'bg=' . s:base2 . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi CursorLineNr ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base2 . ' gui=' . s:bld . ' cterm=' . s:bld
execute 'hi Cursor '       . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:base4 . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Standard: {{{

execute 'hi Comment '        . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi SpecialComment ' . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl
" ---------------------------.
execute 'hi Constant '       . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi String '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Character '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Number '         . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Boolean '        . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Float '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------.
execute 'hi Identifier '     . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Function '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------.
execute 'hi Statement '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Conditional '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Repeat '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Label '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Operator '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Keyword '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Exception '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------.
execute 'hi PreProc '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Include '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Define '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Macro '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi PreCondit '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------.
execute 'hi Type '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi StorageClass '   . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Structure '      . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Typedef '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------.
execute 'hi Special '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi SpecialChar '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Tag '            . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Delimiter '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Debug '          . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:aco50 . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------.
execute 'hi Underlined '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl
execute 'hi Ignore '         . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Error '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Todo '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Title '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}

" Plugin specific
"----------------------------------------------------------------
" ALE: {{{

execute 'hi ALEInfoSign '                . s:envir . 'fg=' . s:acb50
execute 'hi ALEErrorSign '               . s:envir . 'fg=' . s:acr50
execute 'hi ALEWarningSign '             . s:envir . 'fg=' . s:aco50
execute 'hi ALESignColumnWithErrors '    . s:envir . 'fg=' . s:acr50
execute 'hi ALESignColumnWithoutErrors ' . s:envir . 'fg=' . s:acg50

" }}}
" Syntastic: {{{

execute 'hi SyntasticError '        . s:envir . 'fg=' . s:acr50
execute 'hi SyntasticWarning '      . s:envir . 'fg=' . s:aco50
execute 'hi SyntasticStyleError '   . s:envir . 'fg=' . s:acr70
execute 'hi SyntasticStyleWarning ' . s:envir . 'fg=' . s:aco70

" }}}
" Neomake: {{{

execute 'hi NeomakeErrorSign '   . s:envir . 'fg=' . s:acr50
execute 'hi NeomakeWarningSign ' . s:envir . 'fg=' . s:aco50
execute 'hi NeomakeMessageSign ' . s:envir . 'fg=' . s:acg50
execute 'hi NeomakeInfoSign '    . s:envir . 'fg=' . s:acc50

" }}}
" GitGutter: {{{

execute 'hi GitGutterAdd '          . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi GitGutterChange '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi GitGutterDelete '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi GitGutterChangeDelete ' . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Vim-javascript: {{{
" URL: https://github.com/pangloss/vim-javascript

execute 'hi jsFunction '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsFuncArgs '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsFuncName '      . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsFuncCall '      . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsFunctionKey '   . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ----------------------------.
execute 'hi jsFlowObjectKey ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsPrototype '     . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsObject '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsObjectValue '   . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsGlobalObjects ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------  -.
execute 'hi jsRegexpString '  . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsStorageClass '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsClassKeyword '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsBrackets '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsSpecial '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi jsThis '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Vim-go: {{{
" URL: https://github.com/fatih/vim-go

execute 'hi goField '                 . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goMethodCall '            . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goFunctionCall '          . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goBoolean '               . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goPredefinedIdentifiers ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goExtraType '             . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goTypeDecl '              . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goVarARgs '               . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}

" Filetype specific
"----------------------------------------------------------------
" VimL: {{{

execute 'hi vimVar '           . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimNumber '        . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimCommand '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimIsCommand '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimNotFunc '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi vimFunction '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimUserFunc '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimFuncName '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimFuncBody '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimFuncKey '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimFuncVar '       . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimFuncSid '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimFuncBlank '     . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi vimAddress '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimSubst '         . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi vimMap '           . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimMapMod '        . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimMapModKey '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimNotation '      . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimBracket '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimMapRhs '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimMapRhsExtend '  . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimMapLhs '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi vimAugroupKey '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimAutoCmd '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimAutoEvent '     . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi vimLet '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimSet '           . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimSetMod '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimSetEqual '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimOption '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimSynType '       . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimOper '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimSep '           . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimSetSep '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimParenSep '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimCtrlChar '      . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimContinue '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimCommentTitle '  . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimCommentString ' . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi vimLineComment '   . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" HTML: {{{

execute 'hi htmlTag '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlTagN '           . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlEndTag '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlTagName '        . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlScriptTag '      . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlSpecialTagName ' . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlArg '            . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlTitle '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi htmlSpecialChar '    . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" XML: {{{

execute 'hi xmlTag '             . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlTagName '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlEndTag '          . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlNamespace '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi xmlEntity '          . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlEntityPunct '     . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi xmlAttrib '          . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlAttribPunct '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlString '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi xmlProcessingDelim ' . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlProcessing '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi xmlCdataCdata '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlCdataStart '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlCdataEnd '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlCdata '           . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi xmlDocType '         . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlDocTypeDecl '     . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlDocTypeKeyword '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi xmlInlineDTD '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" PHP: {{{

execute 'hi phpRegion '               . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpParent '               . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpOperator '             . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpComparison '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpMemberSelector '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpVarSelector '          . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpIdentifier '           . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpIntVar '               . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpEnvVar '               . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpConstant '             . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpCoreConstant '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpMagicConstants '       . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpBoolean '              . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpNumber '               . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpType '                 . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpKeyword '              . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpStatement '            . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpConditional '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpRepeat '               . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpLabel '                . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpException '            . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpDefine '               . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpInclude '              . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpMethods '              . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpMethodsVar '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpStructure '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpStorageClass '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpFunctions '            . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpSpecialFunction '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpStringSingle '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpStringDouble '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpStringDelimiter '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpBacktick '             . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpBackslashSequences '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpBackslashDoubleQuote ' . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpBackslashSingleQuote ' . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpComment '              . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpDocTags '              . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpDocCustomTags '        . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------------.
execute 'hi phpFCKeyword '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi phpSCKeyword '            . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" CSS: {{{

execute 'hi cssTagName '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssClassName '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssClassNameDot '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssIdentifier '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssPseudoClass '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:itl . ' cterm=' . s:itl
execute 'hi cssPseudoClassId '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:itl . ' cterm=' . s:itl
execute 'hi cssPseudoClassFn '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:itl . ' cterm=' . s:itl
execute 'hi cssPseudoClassLang '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:itl . ' cterm=' . s:itl
" ----------------------------------.
execute 'hi cssAttributeSelector '  . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssSelectorOp '         . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssSelectorOp2 '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssBraces '             . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ----------------------------------.
execute 'hi cssDefinition '         . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssVendor '             . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssHacks '              . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ----------------------------------.
execute 'hi cssProp '               . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssAttr '               . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssAttrComma '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ----------------------------------.
execute 'hi cssImportant '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssUnicodeEscape '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssStringQQ '           . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssStringQ '            . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssURL '                . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl
" ----------------------------------.
execute 'hi cssColor '              . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssValueNumber '        . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssValueAngle '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssValueTime '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssValueLength '        . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssValueFrequency '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssUnitDecorators '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssKeyFrameSelector '   . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssKeyFrame '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ----------------------------------.
execute 'hi cssFunction '           . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssFunctionName '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ----------------------------------.
execute 'hi cssFontDescriptor '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssIncludeKeyword '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssMediaKeyword '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssMediaComma '         . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssMediaType '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssMediaProp '          . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssMediaAttr '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cssComment '            . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" JavaScript: {{{

execute 'hi javaScriptBraces '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptParens '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptOperator '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptIdentifier '   . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptConstant '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------------.
execute 'hi javaScriptType '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptFunction '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptStatement '    . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptConditional '  . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptRepeat '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptBranch '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------------.
execute 'hi javaScriptNumber '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptBoolean '      . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptMember '       . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptGlobal '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------------.
execute 'hi javaScriptCharacter '    . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptLabel '        . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptStringS '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptStringD '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptSpecial '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi javaScriptRegexpString ' . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Makefile: {{{

execute 'hi makeIdent '      . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeTarget '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeImplicit '   . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeInclude '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeDefine '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeSpecTarget ' . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeStatement '  . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeCommands '   . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeSpecial '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi makeComment '    . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" CMake: {{{

execute 'hi cmakeStatement '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cmakeArguments '     . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cmakeArgument '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cmakeVariableValue ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cmakeEnvironment '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cmakeEscaped '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cmakeOperators '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cmakeString '        . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" C: {{{

execute 'hi cComment '          . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cCppOut '           . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cInclude '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cIncluded '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cDefine '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cPreProc '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------.
execute 'hi cStorageClass '     . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cStructure '        . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cFunction '         . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cFormat '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cType '             . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------.
execute 'hi cConstant '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cCharacter '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cSpecialCharacter ' . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cString '           . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cCppString '        . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cSpecial '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cNumber '           . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cOctal '            . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cFloat '            . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------.
execute 'hi cRepeat '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cConditional '      . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cStatement '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------.
execute 'hi cOperator '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cUserLabel '        . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cLabel '            . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" CPP: {{{

execute 'hi cppStorageClass '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppStructure '          . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppExceptions '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppAccess '             . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppCast '               . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppType '               . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppModifier '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ----------------------------------.
execute 'hi cppBoolean '            . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppConstant '           . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppStatement '          . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppSpecialCharacter '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppOperator '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppRawString '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi cppRawStringDelimiter ' . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Shell/Bash: {{{

execute 'hi shComment '        . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shCommand '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shCommandSub '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shCmdSubRegion '   . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shCmdParenRegion ' . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi shLoop '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shConditional '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shTestOpr '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi shStatement '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shVariable '       . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shShellVariables ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shNoQuote '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shSpecial '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shQuote '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shSingleQuote '    . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shDoubleQuote '    . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shEcho '           . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi shDeref '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shDerefOp '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shDerefVar '       . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shDerefSimple '    . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shDerefPattern '   . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi shFunction '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shFunctionKey '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shFunctionOne '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shFunctionTwo '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shArithRegion '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shArithmetic '     . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi shCase '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shCaseEsac '       . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shOperator '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shSetList '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi shOption '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Shell/Zsh: {{{

execute 'hi zshComment '         . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshCommands '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi zshQuoted '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshString '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshStringDelimiter ' . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi zshRepeat '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshConditional '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshKeyword '         . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshDelimiter '       . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshException '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi zshDeref '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshShortDeref '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshSubst '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshOldSubst '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshSubstDelim '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshPOSIXString '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -------------------------------.
execute 'hi zshFunction '        . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshOptions '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshVariable '        . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi zshVariableDef '     . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Python: {{{

execute 'hi pythonComment '     . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonInclude '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonImport '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------.
execute 'hi pythonOperator '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonStatement '   . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonAsync '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonConditional ' . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonRepeat '      . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonException '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonExceptions '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------.
execute 'hi pythonDecorator '   . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonFunction '    . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonBuiltin '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ------------------------------.
execute 'hi pythonString '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonRawString '   . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonQuotes '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonEscape '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonVariable '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi pythonNumber '      . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Ruby: {{{

execute 'hi rubyComment '                . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyData '                   . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyDataDirective '          . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyDocumentation '          . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------------.
execute 'hi rubyString '                 . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyStringEscape '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyStringDelimiter '        . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyRegexp '                 . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyRegexpEscape '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyRegexpDelimiter '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyRegexpQuantifier '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyRegexpDot '              . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyInterpolationDelimiter ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyASCIICode '              . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------------.
execute 'hi rubyModule '                 . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyDefine '                 . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyInclude '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyClass '                  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyFunction '               . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyMethodExceptional '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------------.
execute 'hi rubyNumber '                 . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyInteger '                . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyFloat '                  . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyBoolean '                . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyIdentifier '             . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyClassVariable '          . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyGlobalVariable '         . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyInstanceVariable '       . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyPredefinedVariable '     . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyPredefinedIdentifier '   . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyPredefinedConstant '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyPseudoVariable '         . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyConstant '               . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------------.
execute 'hi rubyRepeat '                 . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyRepeatModifier '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyOptionalDo '             . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyConditional '            . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyConditionalModifier '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyKeyword '                . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyControl '                . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyBeginEnd '               . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyAccess '                 . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyEval '                   . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyAttribute '              . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyException '              . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyExceptional '            . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------------.
execute 'hi rubySymbol '                 . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyCurlyBlock '             . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi rubyOperator '               . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Perl: {{{

execute 'hi perlSharpBang '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlControl '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlInclude '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------.
execute 'hi perlString '           . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlSpecial '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlSpecialMatch '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlCharacter '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------.
execute 'hi perlMatch '            . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlMatchStartEnd '    . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------.
execute 'hi perlNumber '           . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlFloat '            . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------.
execute 'hi perlType '             . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlIdentifier '       . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlVarPlain '         . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlLabel '            . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------.
execute 'hi perlStatement '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlStatementList '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlStatementFlow '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlStatementInclude ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlStatementStorage ' . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlStatementControl ' . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlConditional '      . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlRepeat '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" ---------------------------------.
execute 'hi perlFunction '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlMethod '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlSubName '          . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi perlSubPrototype '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Go: {{{

execute 'hi goDirective '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goDeclaration '    . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goDeclType '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi goStatement '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goConditional '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goLabel '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goRepeat '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi goType '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goSignedInts '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goUnsignedInts '   . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goFloats '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goComplexes '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi goBuiltins '       . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goConstants '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi goEscapeOctal '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goEscapeC '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goEscapeX '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goEscapeU '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goEscapeBigU '     . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goCharacter '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi goString '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goStringGroup '    . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goRawString '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goSpecialString '  . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
" -----------------------------.
execute 'hi goDecimalInt '     . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goHexadecimalInt ' . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goOctalInt '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi Integer '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goFloat '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi goImaginary '      . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Markdown: {{{

execute 'hi htmlCommentPart '           . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownH1 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownH2 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownH3 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownH4 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownH5 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownH6 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownHeadingDelimiter '  . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownCode '              . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownCodeDelimiter '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownLinkDelimiter '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownLinkTextDelimiter ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownUrl '               . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:unl . ' cterm=' . s:unl
execute 'hi markdownLinkText '          . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownListMarker '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownOrderedListMarker ' . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownRule '              . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownId '                . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownIdDeclaration '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownBlockQuote '        . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownBoldDelimiter '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownBold '              . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:bld
execute 'hi markdownItalicDelimiter '   . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi markdownItalic '            . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:itl

" }}}
" Yaml: {{{

execute 'hi yamlDocumentStart '       . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi yamlBlockMappingKey '     . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi yamlKeyValueDelimiter '   . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi yamlPlainScalar '         . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi yamlInteger '             . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi yamlBool '                . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi yamlFlowStringDelimiter ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi yamlFlowString '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi liquidYamlHead '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Vimwiki: {{{

execute 'hi VimwikiHeaderChar ' . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VimwikiHeader1 '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VimwikiHeader2 '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VimwikiHeader3 '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VimwikiHeader4 '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VimwikiHeader5 '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VimwikiHeader6 '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi VimwikiListTodo '   . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}
" Maxima: {{{

execute 'hi maximaFunc '  . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi maximaComma ' . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi maximaZone '  . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non
execute 'hi maximaOp '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:non . ' gui=' . s:non . ' cterm=' . s:non

" }}}

" vim: set fdm=marker:
