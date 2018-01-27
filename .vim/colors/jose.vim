hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="jose"

"1 #131416 #
"2 #94c170 #
"3 #f0C674 #
"4 #81A2BE #
"5 #c18bc1 #
"6 #8abeb7 #
"7 #c5c6c8 #
"8 #969896 19 #

" ------------------
" Editor settings
" ------------------
hi CursorLineNr         ctermfg=8       ctermbg=none    cterm=none 
hi EndOfBuffer          ctermfg=19      ctermbg=none    cterm=none 
hi LineNr               ctermfg=19      ctermbg=none    cterm=none 
hi Normal               ctermfg=7       ctermbg=none    cterm=none 

" -----------------
" - Number column -
" -----------------
hi CursorColumn         ctermfg=none    ctermbg=none    cterm=none
hi FoldColumn           ctermfg=none    ctermbg=none    cterm=none
hi SignColumn           ctermfg=none    ctermbg=none    cterm=none
hi Folded               ctermfg=none    ctermbg=none    cterm=none
hi EndOfBuffer          ctermfg=18      ctermbg=none    cterm=none
" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit            ctermfg=19      ctermbg=none    cterm=none
hi ColorColumn          ctermfg=none    ctermbg=none    cterm=none
hi TabLine              ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill          ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel           ctermfg=none    ctermbg=none    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory          ctermfg=4       ctermbg=none    cterm=none
hi Search             ctermfg=none    ctermbg=none    cterm=none
hi IncSearch          ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
"hi StatusLine          ctermfg=none    ctermbg=none    cterm=none
"hi StatusLineNC        ctermfg=none    ctermbg=none    cterm=none
hi WildMenu           ctermfg=none    ctermbg=none    cterm=none
hi Question           ctermfg=none    ctermbg=none    cterm=none
hi Title              ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg            ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg            ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen         ctermfg=15      ctermbg=19      cterm=bold
hi Visual             ctermfg=none    ctermbg=235     cterm=none
hi VisualNOS          ctermfg=none    ctermbg=none    cterm=none
hi NonText            ctermfg=none    ctermbg=none    cterm=none

hi Todo               ctermfg=none    ctermbg=none    cterm=none
hi Underlined         ctermfg=none    ctermbg=none    cterm=none
hi Error              ctermfg=1       ctermbg=none    cterm=none
hi ErrorMsg           ctermfg=1       ctermbg=none    cterm=none
hi WarningMsg         ctermfg=none    ctermbg=none    cterm=none
hi Ignore             ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey         ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant           ctermfg=6       ctermbg=none    cterm=none
hi String             ctermfg=2       ctermbg=none    cterm=none
hi StringDelimiter    ctermfg=none    ctermbg=1       cterm=none
hi Character          ctermfg=none    ctermbg=none    cterm=none
hi Number             ctermfg=3       ctermbg=none    cterm=none
hi Boolean            ctermfg=4       ctermbg=none    cterm=none
hi Float              ctermfg=none    ctermbg=1       cterm=none

hi Identifier         ctermfg=16      ctermbg=none    cterm=none
hi Function           ctermfg=4       ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement          ctermfg=12      ctermbg=none    cterm=none
hi Conditional        ctermfg=5       ctermbg=none    cterm=none
hi Repeat             ctermfg=none    ctermbg=none    cterm=none
hi Label              ctermfg=none    ctermbg=none    cterm=none
hi Operator           ctermfg=7       ctermbg=none    cterm=none
hi Keyword            ctermfg=7       ctermbg=none    cterm=none
hi Exception          ctermfg=none    ctermbg=none    cterm=none
hi Comment            ctermfg=237     ctermbg=none    cterm=none

hi Special            ctermfg=7       ctermbg=none    cterm=none
hi SpecialChar        ctermfg=none    ctermbg=none    cterm=none
hi Tag                ctermfg=none    ctermbg=none    cterm=none
hi Delimiter          ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment     ctermfg=none    ctermbg=none    cterm=none
hi Debug              ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu              ctermfg=7       ctermbg=19      cterm=none
hi PmenuSel           ctermfg=18      ctermbg=16      cterm=none
hi PmenuSbar          ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb         ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad           ctermfg=none    ctermbg=none    cterm=none
hi SpellCap           ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal         ctermfg=none    ctermbg=none    cterm=none
hi SpellRare          ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Completion
" --------------------------------
hi PreProc            ctermfg=2       ctermbg=none    cterm=none
hi Include            ctermfg=1       ctermbg=none    cterm=none
hi Define             ctermfg=none    ctermbg=none    cterm=none
hi Macro              ctermfg=none    ctermbg=none    cterm=none
hi PreCondit          ctermfg=none    ctermbg=none    cterm=none

hi Type               ctermfg=none    ctermbg=none    cterm=none
hi StorageClass       ctermfg=none    ctermbg=none    cterm=none
hi Structure          ctermfg=none    ctermbg=none    cterm=none
hi Typedef            ctermfg=none    ctermbg=none    cterm=none

" Buftabline
hi! BufTabLineCurrent ctermfg=0       ctermbg=3       cterm=none 
hi! BufTabLineActive  ctermfg=none    ctermbg=5       cterm=none
hi! BufTabLineHidden  ctermfg=7       ctermbg=19      cterm=none
hi! BufTabLineFill    ctermfg=none    ctermbg=0       cterm=none

" LineNr

" Cursor Line
hi CursorLine         ctermfg=none    ctermbg=18     cterm=none   
hi CursorLineNr       ctermfg=8       ctermbg=18     cterm=none

" Statusbar
hi User1              ctermfg=7       ctermbg=18     cterm=none
hi User2              ctermfg=7       ctermbg=19     cterm=none 
hi User3              ctermfg=0       ctermbg=16     cterm=none
hi User4              ctermfg=7       ctermbg=19     cterm=none

if version >= 700
  highlight statusLine cterm=none ctermfg=black ctermbg=green
  au InsertLeave * highlight StatusLine cterm=none ctermfg=0 ctermbg=2
  au InsertEnter * highlight StatusLine cterm=none ctermfg=19 ctermbg=4
endif

" Plugins
hi link ALEErrorSign Error
hi link ALEWarningSign Warning


set background=dark

