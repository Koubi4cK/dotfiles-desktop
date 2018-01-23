set number
syntax on
set noshowmode
set showtabline=0
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set cursorline
color default

"
" Status Line
"

let g:currentmode={
  \ 'n'  : 'NORMAL ',
  \ 'no' : 'N·Operator Pending ',
  \ 'v'  : 'V ',
  \ 'V'  : 'V·Line ',
  \ 'x22' : 'V·Block ',
  \ 's'  : 'Select ',
  \ 'S'  : 'S·Line ',
  \ 'x19' : 'S·Block ',
  \ 'i'  : 'INSERT ',
  \ 'R'  : 'REPLACE ',
  \ 'Rv' : 'V·Replace ',
  \ 'c'  : 'Command ',
  \ 'cv' : 'Vim Ex ',
  \ 'ce' : 'Ex ',
  \ 'r'  : 'Prompt ',
  \ 'rm' : 'More ',
  \ 'r?' : 'Confirm ',
  \ '!'  : 'Shell ',
  \ 't'  : 'Terminal '
\}

" Buftabline
hi! BufTabLineCurrent ctermbg=5 ctermfg=0 
hi! BufTabLineActive ctermbg=5
hi! BufTabLineHidden ctermbg=18 ctermfg=7
hi! BufTabLineFill ctermbg=0

hi User1 ctermbg=18 ctermfg=7
hi User2 ctermbg=19 ctermfg=7
hi User3 ctermbg=16 ctermfg=0
hi User4 ctermbg=19 ctermfg=7

if version >= 700
  highlight statusLine cterm=none ctermfg=black ctermbg=green
  au InsertLeave * highlight StatusLine cterm=none ctermfg=black ctermbg=green
  au InsertEnter * highlight StatusLine cterm=none ctermfg=19 ctermbg=blue
endif

" Devicons Functions
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

set laststatus=2
set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%1*\ \ %F\ %*                         " Path & Filename
set statusline+=%1*\ %=                               " Switch to the right
set statusline+=%2*\ %l.%c                            " Line.Column
set statusline+=%2*\ %1*%2*                           " Spacer
set statusline+=%3*\ %{MyFiletype()}                  " Devicons Filetype()
set statusline+=%3*\ %{MyFileformat()}                " Devicons FileFormat()
set statusline+=%4*\ %p%%\                            " File Percent 

" LinNr color
hi! LineNr ctermfg=19
hi! EndOfBuffer ctermbg=0 ctermfg=0
" Cursor Line
hi! CursorLine cterm=none ctermbg=18
hi! CursorLineNr ctermfg=8 ctermbg=18


" Indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set ruler
set mouse=a

"
" netrw
"
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

set fillchars+=vert:\│ 
hi! VertSplit ctermbg=18 ctermfg=0
hi! StatusLineNC ctermbg=0 ctermfg=0


let g:ycm_server_python_interpreter = '/usr/bin/python3'


