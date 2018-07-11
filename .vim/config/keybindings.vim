" vim-easyalign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"map <C-n> :Lex<CR>
map <C-n> :NERDTreeToggle<CR>

" vim-buftabline
set hidden

" Switch between tabs
nnoremap <S-Right> :bnext<CR>
nnoremap <S-Left> :bprev<CR>

" close tabs
nnoremap <C-w> :bd<CR>

" Copy/Paste in system's clipboard
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

" Save
nnoremap <C-s> :w<CR>

" Find what the highlight group under the cursor
function! SynStack()
  let l:s = synID(line('.'), col('.'), 1)                                       
  echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfunc

noremap <F10> : call SynStack()<CR>

