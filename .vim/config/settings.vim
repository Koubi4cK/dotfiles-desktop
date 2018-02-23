set number
set noshowmode
set showtabline=0
filetype plugin on
filetype plugin indent on " required!
set omnifunc=syntaxcomplete#Complete
set cursorline
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colo hybrid
set updatetime=250
syntax on


let g:gitgutter_async=0
let g:gitgutter_log=1
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


" Devicons Functions
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" 1 = red
" 2 = green

" Buftabline
hi BufTabLineCurrent ctermfg=15      ctermbg=0       cterm=none 
hi BufTabLineActive  ctermfg=none    ctermbg=5       cterm=none
hi BufTabLineHidden  ctermfg=7       ctermbg=none      cterm=none
hi BufTabLineFill    ctermfg=none    ctermbg=233     cterm=none

" LineNr

" Cursor Line
hi CursorLine         ctermfg=none    ctermbg=0     cterm=none   
hi CursorLineNr       ctermfg=15       ctermbg=none     cterm=none

" Statusbar
hi User1              ctermfg=15       ctermbg=none     cterm=none
hi User2              ctermfg=7       ctermbg=0     cterm=none 
hi User3              ctermfg=0       ctermbg=5     cterm=none
hi User4              ctermfg=7       ctermbg=0     cterm=none

if version >= 700
  highlight statusLine cterm=none ctermfg=black ctermbg=green
  au InsertLeave * highlight StatusLine cterm=bold ctermfg=0 ctermbg=10
  au InsertEnter * highlight StatusLine cterm=bold ctermfg=0 ctermbg=12
endif

set laststatus=2
set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%1*\ %f\                              " Path & Filename
set statusline+=%1*\ %=                               " Switch to the right
set statusline+=%1*\ %{MyFileformat()}                " Devicons FileFormat()

set statusline+=%2*\ %l.%c                            " Line.Column
set statusline+=%2*\ %1*%2*                           " Spacer
set statusline+=%3*\ %{MyFiletype()}                  " Devicons Filetype()
set statusline+=%4*\ %p%%\                            " File Percent 

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

au FileType netrw let g:netrw_list_hide = netrw_gitignore#Hide()
hi! netrwTreeBar ctermfg=19
set fillchars+=vert:\│ 



let g:ycm_server_python_interpreter = '/usr/bin/python3'
