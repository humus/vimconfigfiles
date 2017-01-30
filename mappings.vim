nnoremap ygl :<C-u><C-r>=getline('.')<cr><cr>
nnoremap <Space> :
nnoremap ,. <C-^>

cnoremap <C-j><C-j> ^
inoremap <C-j><C-j> ^
noremap! ,g <
noremap! ,f >
noremap! ,s *
noremap! ,e =
noremap! ,a ''<left>
noremap! ,q ""<left>
noremap! ,b \
noremap! ,x {}<left>
noremap! ,c ()<left>
noremap! ,r []<left>
noremap! ,1 /
noremap! ,Q @
noremap! jk <Esc>
noremap! kj <Esc>
noremap! gf <Right>
noremap! fg <Left>
noremap! %% <C-r>=expand('%:h') . g:filesep<cr>


" nnoremap <silent> <C-p> :call UniteWhatToDoWhenItsCalled()<cr>
" nnoremap <silent> <C-n> :keepalt Unite -auto-resize -start-insert -prompt-direction=below -buffer-name=files buffer file_mru<cr>
nnoremap <silent> <C-p> :call CtrlPWhatTodoWhenCtrlpIsCalled()<cr>
nnoremap <silent> <C-n> :CtrlPMRU<cr>

fun! CtrlPWhatTodoWhenCtrlpIsCalled() "{{{
  let actual_dir = getcwd()
  let dir = projectroot#get()
    if dir != ''
      CtrlPMixed
    elseif expand('%:t') == ''
      CtrlPMRU
    else
      execute 'CtrlP ' . expand('%:p:h')
    endif
endfunction "}}}

" Previous unite examples
      " keepalt ProjectRootExe Unite -prompt-direction=below -auto-resize -start-insert -buffer-name=files file_rec/git file_mru -unique
      " keepalt Unite -prompt-direction=below -auto-resize -start-insert -buffer-name=files file_mru -unique
      " keepalt Unite -prompt-direction=below -auto-resize -start-insert -buffer-name=files file_rec file_mru -unique

fun! Fontsize_up() "{{{
  let font = &guifont
  let beforesize = font[0:matchend(font, '\v\.*\ze[^\d][[:digit:]]+')]
  let index = match(font, '\v[^:]\zs:\w+$') - len(font)
  let aftersize = font[index : ]
  let size = str2nr(matchstr(font, '\v.*[^[:digit:]]\zs[[:digit:]]+\ze:.*'))
  let size += 1
  let new_font = beforesize . size . aftersize
  execute 'set guifont=' . new_font
endfunction "}}}

fun! Fontsize_down() "{{{
  let font = &guifont
  let beforesize = font[0:matchend(font, '\v\.*\ze[^\d][[:digit:]]+')]
  let index = match(font, '\v[^:]\zs:\w+$') - len(font)
  let aftersize = font[index : ]
  let size = str2nr(matchstr(font, '\v.*[^[:digit:]]\zs[[:digit:]]+\ze:.*'))
  let size -= 1
  let new_font = beforesize . size . aftersize
  execute 'set guifont=' . new_font
endfunction "}}}


nnoremap <silent> g0 :call Fontsize_up()<cr>
nnoremap <silent> g9 :call Fontsize_down()<cr>

let mapleader=','

" vim: sw=2 ts=2 sts=2 et
