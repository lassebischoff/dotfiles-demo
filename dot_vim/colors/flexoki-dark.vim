" Flexoki Dark - Official color mappings
" Based on https://stephango.com/flexoki
" Maintainer: Based on Flexoki by Steph Ango
" License: MIT

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "flexoki-dark"

" Enable true colors
if has('termguicolors')
  set termguicolors
endif

" Base colors (dark mode)
let s:bg       = '#100F0F'  " black
let s:bg2      = '#1C1B1A'  " base-950
let s:ui       = '#282726'  " base-900
let s:ui2      = '#343331'  " base-850
let s:ui3      = '#403E3C'  " base-800
let s:tx3      = '#575653'  " base-700 (faint text)
let s:tx2      = '#878580'  " base-500 (muted text)
let s:tx       = '#CECDC3'  " base-200 (primary text)

" Accent colors (dark mode uses -400 variants)
let s:red      = '#D14D41'  " red-400
let s:red2     = '#AF3029'  " red-600
let s:orange   = '#DA702C'  " orange-400
let s:yellow   = '#D0A215'  " yellow-400
let s:green    = '#879A39'  " green-400
let s:cyan     = '#3AA99F'  " cyan-400
let s:blue     = '#4385BE'  " blue-400
let s:purple   = '#8B7EC8'  " purple-400
let s:magenta  = '#CE5D97'  " magenta-400

" Helper function
function! s:h(group, fg, bg, attr)
  let l:cmd = 'highlight ' . a:group
  if a:fg != ''
    let l:cmd .= ' guifg=' . a:fg
  endif
  if a:bg != ''
    let l:cmd .= ' guibg=' . a:bg
  endif
  if a:attr != ''
    let l:cmd .= ' gui=' . a:attr
  endif
  execute l:cmd
endfunction

" Editor UI
call s:h('Normal', s:tx, s:bg, '')
call s:h('Visual', '', s:ui2, '')
call s:h('Cursor', s:bg, s:tx, '')
call s:h('CursorLine', '', s:ui, 'NONE')
call s:h('CursorLineNr', s:tx, s:ui, '')
call s:h('LineNr', s:tx3, '', '')
call s:h('VertSplit', s:ui3, '', '')
call s:h('StatusLine', s:tx, s:ui2, '')
call s:h('StatusLineNC', s:tx3, s:ui, '')
call s:h('Pmenu', s:tx, s:ui2, '')
call s:h('PmenuSel', s:tx, s:ui3, '')
call s:h('Search', s:bg, s:yellow, '')
call s:h('IncSearch', s:bg, s:orange, '')
call s:h('ColorColumn', '', s:ui, '')
call s:h('SignColumn', '', s:bg, '')
call s:h('Folded', s:tx3, s:ui, '')
call s:h('FoldColumn', s:tx3, s:bg, '')

" Syntax highlighting - Based on official Flexoki screenshot
" Comments: gray/muted (tx-3)
call s:h('Comment', s:tx3, '', 'italic')
call s:h('SpecialComment', s:tx3, '', 'italic')

" Constants & Booleans: red (in the screenshot, true/false are red/orange)
call s:h('Constant', s:red, '', '')
call s:h('Boolean', s:red, '', '')
call s:h('Number', s:purple, '', '')
call s:h('Float', s:purple, '', '')

" Strings: cyan
call s:h('String', s:cyan, '', '')
call s:h('Character', s:cyan, '', '')

" Identifiers & Variables: blue (window, media, callback)
call s:h('Identifier', s:blue, '', '')

" Functions & Methods: orange (onload, matchMedia, log, updateStyle, etc.)
call s:h('Function', s:orange, '', '')

" Keywords: green (export, default, class, extends, async, const, if, else)
call s:h('Statement', s:green, '', '')
call s:h('Conditional', s:green, '', '')
call s:h('Repeat', s:green, '', '')
call s:h('Label', s:green, '', '')
call s:h('Keyword', s:green, '', '')
call s:h('Exception', s:green, '', '')
call s:h('StorageClass', s:green, '', '')

" Operators & Punctuation: muted text (tx-2)
call s:h('Operator', s:tx2, '', '')
call s:h('Delimiter', s:tx2, '', '')

" Imports & Preprocessor: red (import, from)
call s:h('PreProc', s:red, '', '')
call s:h('Include', s:red, '', '')
call s:h('Define', s:red, '', '')
call s:h('Macro', s:red, '', '')
call s:h('PreCondit', s:red, '', '')

" Types: blue (Plugin)
call s:h('Type', s:blue, '', '')
call s:h('Structure', s:blue, '', '')
call s:h('Typedef', s:blue, '', '')

" Special & Language features: magenta (this keyword)
call s:h('Special', s:magenta, '', '')
call s:h('SpecialChar', s:magenta, '', '')
call s:h('Tag', s:blue, '', '')
call s:h('Debug', s:red, '', '')

" Other
call s:h('Underlined', s:blue, '', 'underline')
call s:h('Ignore', s:tx3, '', '')
call s:h('Error', s:red, s:bg, 'bold')
call s:h('Todo', s:magenta, s:bg, 'bold')

" Diff
call s:h('DiffAdd', s:green, s:bg2, '')
call s:h('DiffChange', s:yellow, s:bg2, '')
call s:h('DiffDelete', s:red, s:bg2, '')
call s:h('DiffText', s:blue, s:bg2, 'bold')

" Git
call s:h('gitcommitComment', s:tx3, '', 'italic')
call s:h('gitcommitSummary', s:tx, '', '')
call s:h('gitcommitOverflow', s:red, '', '')

" JavaScript/TypeScript specific
call s:h('javaScriptFunction', s:green, '', '')
call s:h('javaScriptIdentifier', s:green, '', '')
call s:h('javaScriptBraces', s:tx2, '', '')
call s:h('javaScriptParens', s:tx2, '', '')
call s:h('jsFunction', s:green, '', '')
call s:h('jsThis', s:magenta, '', '')
call s:h('jsClassKeyword', s:green, '', '')
call s:h('jsExtendsKeyword', s:green, '', '')
call s:h('jsFuncCall', s:orange, '', '')
call s:h('jsObjectKey', s:blue, '', '')
call s:h('jsVariableDef', s:blue, '', '')

" TypeScript
call s:h('typescriptImport', s:red, '', '')
call s:h('typescriptExport', s:green, '', '')
call s:h('typescriptClassName', s:red, '', '')
call s:h('typescriptIdentifier', s:magenta, '', '')
call s:h('typescriptBraces', s:tx2, '', '')

" Markdown
call s:h('markdownHeadingDelimiter', s:orange, '', 'bold')
call s:h('markdownH1', s:orange, '', 'bold')
call s:h('markdownH2', s:orange, '', 'bold')
call s:h('markdownH3', s:orange, '', 'bold')
call s:h('markdownCode', s:cyan, '', '')
call s:h('markdownCodeBlock', s:cyan, '', '')
call s:h('markdownUrl', s:blue, '', 'underline')
call s:h('markdownLinkText', s:blue, '', '')

" Cleanup
delfunction s:h
