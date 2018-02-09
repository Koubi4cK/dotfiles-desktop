" ALE
hi clear ALEErrorSign
hi clear ALEWarningSign

let g:ale_sign_error = '⏺'
let g:ale_warning_sign = '!'"

" indentline
let g:indentline_setColors = 1 
let g:indentLine_color_term = 0 
let g:indentLine_char = '│' 
" BuftabLine
let g:buftabline_show = 1

" vim-devicons
let g:WebDevIconsUnicodeGlyphDoubleWith = 1

" vim-indent-guides
" https://github.com/nathanaelkane/vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

let g:ycm_filetype_blacklist = { 'notes': 1, 'unite': 1,  'tagbar': 1,  'pandoc': 1,  'qf': 1,  'vimwiki': 1,  'text': 1,  'infolog': 1,  'mail': 1 }

function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"


