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
colo hybrid_material
set updatetime=250
syntax on

let g:enable_bold_font = 1
let g:enable_italic_font = 1

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
hi BufTabLineHidden  ctermfg=7       ctermbg=none    cterm=none
hi BufTabLineFill    ctermfg=none    ctermbg=233     cterm=none

" LineNr

" Cursor Line
hi CursorLine         ctermfg=none    ctermbg=0     cterm=none   
hi CursorLineNr       ctermfg=15      ctermbg=none  cterm=none

" Statusbar
hi User1              ctermfg=15      ctermbg=none  cterm=none
hi User2              ctermfg=7       ctermbg=0     cterm=none 
hi User3              ctermfg=0       ctermbg=5     cterm=none
hi User4              ctermfg=7       ctermbg=0     cterm=none

" ALE
hi ALEErrorSign       ctermfg=1       ctermbg=none  cterm=bold
hi ALEWarningSign     ctermfg=3       ctermbg=none  cterm=bold
hi ALEError           ctermfg=15      ctermbg=1     cterm=underline,bold
hi ALEWarning         ctermfg=0       ctermbg=11    cterm=underline,bold
if version >= 700
  hi statusLine       ctermfg=0    ctermbg=2     cterm=none
  au InsertLeave * highlight StatusLine cterm=bold ctermfg=0 ctermbg=10
  au InsertEnter * highlight StatusLine cterm=bold ctermfg=0 ctermbg=12
endif

" Twin Words
hi CurrentWordTwins   ctermfg=0        ctermbg=11 cterm=underline
set laststatus=2
set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%1*\ %f\                              " Path & Filename

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
set statusline+=%{fugitive#statusline()}
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

au FileType css set omnifunc=csscomplete#CompleteCSS
" au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=markdown

let $TMPDIR = $HOME."/tmp"
let g:ycm_server_python_interpreter = '/usr/bin/python3'
