""" Leco Vim Colorscheme
""" Inspired by stonewashed colorscheme

""" Initial setup
set background=light

if version > 580
  hi clear

  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "leco"


""" Highlight helper functions
function! s:HLFg(group, fg)
  execute 'hi ' . a:group . ' ctermfg=' . a:fg
endfunction

function! s:HLBg(group, bg)
  execute 'hi ' . a:group . ' ctermbg=' . a:bg
endfunction

function! s:HLFgBg(group, fg, bg)
  execute 'hi ' . a:group . ' ctermfg=' . a:fg . ' ctermbg=' . a:bg
endfunction

function! s:HLFgEm(group, fg, em)
  execute 'hi ' . a:group . ' ctermfg=' . a:fg . ' cterm=' . a:em
endfunction

function! s:HLBgEm(group, bg, em)
  execute 'hi ' . a:group . ' ctermbg=' . a:bg . ' cterm=' . a:em
endfunction

function! s:HLFgBgEm(group, fg, bg, em)
  execute 'hi ' . a:group . ' ctermfg=' . a:fg . ' ctermbg=' . a:bg . ' cterm=' . a:em
endfunction


""" Color palette
let s:black       = 0
let s:darkgray    = 240
let s:mediumgray  = 253
let s:lightgray   = 255
let s:white       = 231

let s:green       = 22
let s:lightgreen  = 22
let s:orange      = 214
let s:darkorange  = 130
let s:red         = 124
let s:lightred    = 217
let s:lightyellow = 230
let s:yellow      = 226
let s:blue        = 19
let s:lightblue   = 117

let s:none        = 'none'
let s:underline   = 'underline'
let s:reverse     = 'reverse'
let s:bold        = 'bold'

let s:gutterbg    = s:mediumgray


""" Vim groups
call s:HLFgBg('Normal', s:black, s:white)
call s:HLFgBg('LineNr', s:darkgray, s:mediumgray)
call s:HLFgBg('SignColumn', s:darkgray, s:mediumgray)
call s:HLBg('ColorColumn', s:lightred)
call s:HLBgEm('CursorLine', s:lightgray, s:none)
call s:HLBgEm('CursorLineNr', s:lightgray, s:none)
call s:HLBgEm('CursorColumn', s:lightgray, s:none)
call s:HLFgBg('MatchParen', s:black, s:lightblue)
call s:HLFgBgEm('Error', s:black, s:red, s:none)
call s:HLFgBgEm('Visual', s:black, s:lightblue, s:none)
call s:HLFgBgEm('VertSplit', s:lightgray, s:black, s:none)
call s:HLFgBgEm('Pmenu', s:black, s:white, s:none)
call s:HLFgBgEm('PmenuSel', s:white, s:black, s:none)

hi Pmenu ctermbg=75 ctermfg=253 cterm=reverse
hi PmenuSel ctermfg=253 ctermbg=75
hi Wildmenu ctermbg=120 cterm=underline
hi StatusLine ctermfg=144 ctermbg=140
hi StatusLineNC ctermbg=144 ctermfg=144
hi Underlined ctermfg=40 cterm=underline
hi NonText ctermfg=244 ctermbg=254
hi Title ctermfg=52

""" Generic code groups
call s:HLFg('Comment', s:darkgray)
call s:HLFg('String', s:green)
call s:HLFg('Include', s:green)
call s:HLFg('Boolean', s:green)
call s:HLFg('Function', s:black)
call s:HLFg('Statement', s:blue)
call s:HLFg('Type', s:blue)
call s:HLFg('Keyword', s:blue)
call s:HLFg('Constant', s:red)
call s:HLFg('Number', s:red)
call s:HLFg('Float', s:red)
call s:HLFg('StorageClass', s:red)
call s:HLFg('Identifier', s:red)
call s:HLFg('Conditional', s:darkorange)
call s:HLFg('Repeat', s:darkorange)
call s:HLFg('Special', s:black)
hi Define ctermfg=94 cterm=underline
hi Exception ctermfg=94 cterm=none
hi Macro ctermfg=94
hi PreConduit ctermfg=94
hi PreProc ctermfg=94
hi Search ctermbg=217 cterm=bold
hi SpecialKey ctermbg=254 ctermfg=248
hi Structure ctermfg=64 cterm=underline
hi Typedef ctermfg=64 cterm=underline

call s:HLFgBgEm('Todo', s:black, s:yellow, s:bold)

""" Specific plugin groups
" Coc.nvim
call s:HLFgBg('CocPumMenu', s:black, s:white)
call s:HLFgBg('CocFloating', s:black, s:lightyellow)
call s:HLFgBg('CocMenuSel', s:white, s:black)

call s:HLFgBg('CocErrorSign', s:black, s:red)
call s:HLFgBg('CocWarningSign', s:black, s:orange)
call s:HLFgBg('CocHintSign', s:black, s:yellow)
call s:HLFgBg('CocInfoSign', s:black, s:yellow)

call s:HLFg('CocErrorFloat', s:red)
call s:HLFg('CocWarningFloat', s:black)
call s:HLFg('CocHintFloat', s:black)
call s:HLFg('CocInfoFloat', s:black)

call s:HLFgEm('CocErrorHighlight', s:red, s:underline)
call s:HLFgBg('CocWarningHighlight', s:black, s:orange)
call s:HLFgBg('CocHintHighlight', s:black, s:yellow)
call s:HLFgBg('CocInfoHighlight', s:black, s:yellow)
call s:HLFgEm('CocUnusedHighlight', s:darkgray, s:underline)

" GitGutter
call s:HLFgBg('GitGutterAdd', s:green, s:gutterbg)
call s:HLFgBg('GitGutterDelete', s:red, s:gutterbg)
call s:HLFgBg('GitGutterChange', s:black, s:gutterbg)
call s:HLFgBg('GitGutterChangeDelete', s:black, s:gutterbg)

""" REFERENCE
" Color Chart http://i.stack.imgur.com/UQVe5.png
" Vim Color Names http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" Syntax higlighting http://vimdoc.sourceforge.net/htmldoc/syntax.html#:highlight
" Make Vim Pretty http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
