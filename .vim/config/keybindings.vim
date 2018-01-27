" netrw
map <C-n> :Lex<CR>

" vim-buftabline
set hidden
nnoremap <S-Right> :bnext<CR>
nnoremap <S-Left> :bprev<CR>
map <C-w> :bd<CR>

function! SynStack()
  let l:s = synID(line('.'), col('.'), 1)                                       
  echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfunc

noremap <F10> : call SynStack()<CR>
