nnoremap ygl :<C-u><C-r>=getline('.')<cr><cr>
nnoremap <Space> :
nnoremap ,. <C-^>
nnoremap gs :w<cr>

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
noremap! jj <Esc>
nnoremap <C-c> <Esc>
inoremap gc <Esc>


" nnoremap <silent> <C-p> :call UniteWhatToDoWhenItsCalled()<cr>
" nnoremap <silent> <C-n> :keepalt Unite -auto-resize -start-insert -prompt-direction=below -buffer-name=files buffer file_mru<cr>
nnoremap <silent> <C-p> :call CtrlPWhatTodoWhenCtrlpIsCalled()<cr>
nnoremap <silent> <C-n> :CtrlBuffer<cr>

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

let mapleader=','

augroup diffmapping
  au!
  au FilterWritePre * if &diff | nnoremap }c ]c| endif
  au FilterWritePre * if &diff | nnoremap {c [c| endif
augroup END

inoremap {{ {}O


" vim: sw=2 ts=2 sts=2 et
