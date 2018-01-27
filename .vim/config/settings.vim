set number
syntax on
set noshowmode
set showtabline=0
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set cursorline
color jose

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


