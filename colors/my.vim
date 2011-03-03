" Vim color scheme
"
" Name:        railscast.vim
" Maintainer:  Josh O'Rourke <jorourke23@gmail.com> 
" License:     public domain
"
" A GUI Only port of the RailsCasts TextMate theme [1] to Vim.
" Some parts of this theme were borrowed from the well-documented Lucius theme [2].
" 
" [1] http://railscasts.com/about 
" [2] http://www.vim.org/scripts/script.php?script_id=2536

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "my"

" Colors
" Brown        #BC9458
" Dark Blue    #6D9CBE
" Dark Green   #519F50
" Dark Orange  #FF6600
" Light Blue   #D0D0FF
" Light Green  #A5C261
" Tan          #FFC66D

hi Normal                    guifg=#999999 guibg=#2B2B2B
hi Cursor                    guibg=#FFFFFF
hi CursorLine                guibg=#333435
hi LineNr                    guifg=#888888 guibg=#DEDEDE
hi Search                    guibg=#5A647E
hi Visual                    guibg=#5A647E

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE


"rubyComment
hi Comment                   guifg=#666666 gui=italic
hi Todo                      guifg=#666666 guibg=NONE gui=italic

"rubyPseudoVariable
"nil, self, symbols, etc
hi Constant                  guifg=#66CCCC

"rubyClass, rubyModule, rubyDefine
"def, end, include, etc
hi Define                    guifg=#FF6600

"rubyInterpolation
hi Delimiter                 guifg=#519F50

"rubyError, rubyInvalidVariable
hi Error                     guifg=#FFFFFF guibg=#990000

"rubyFunction
hi Function                  guifg=#66FF33 gui=NONE

"rubyIdentifier
"@var, @@var, $var, etc
hi Identifier                guifg=#CC66FF gui=NONE

"rubyInclude
"include, autoload, extend, load, require
hi Include                   guifg=#FF6600 gui=NONE

"rubyKeyword, rubyKeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
hi Keyword                   guifg=#FF6600

" same as define
hi Macro                     guifg=#FF6600 gui=NONE

"rubyInteger
hi Number                    guifg=#A5C261

" #if, #else, #endif
hi PreCondit                 guifg=#FF6600 gui=NONE

" generic preprocessor
hi PreProc                   guifg=#FF6600 gui=NONE

"rubyControl, rubyAccess, rubyEval
"case, begin, do, for, if unless, while, until else, etc.
hi Statement                 guifg=#FF6600 gui=NONE

"rubyString
hi String                    guifg=#A5C261

hi Title                     guifg=#FFFFFF

"rubyConstant
hi Type                      guifg=#6666FF gui=NONE

hi DiffAdd                   guifg=#E6E1DC guibg=#144212
hi DiffDelete                guifg=#E6E1DC guibg=#660000

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi xmlTag                    guifg=#E8BF6A
hi xmlTagName                guifg=#E8BF6A
hi xmlEndTag                 guifg=#E8BF6A
