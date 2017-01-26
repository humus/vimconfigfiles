let g:filesep=!has('win32') ? '/' : '\'
set enc=utf-8
set nocompatible
set hidden
set sts=4 sw=4 ts=4 et
set guioptions=
set bs=2
set listchars =tab:»\ ,eol:¬,trail:·
set vb
set t_vb=

set undofile
set undodir=C:\vim2\tmp\undo
set noswf
set laststatus=2
set history=500
set completeopt=longest,menuone
set ignorecase smartcase
set timeoutlen=200

set wildignore+=*\\target\\*,*.exe,*.class
colo slate

" Global variables
let g:xptemplate_key=",<Tab>"
let g:xptemplate_key_pum_only="<S-Tab>"
let g:xptemplate_key_visual="<C-s>"
let g:airline_powerline_fonts=1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<F13>'


fun! AlternateJavaComplete(findstart, base) "{{{
call javacomplete#logger#Log("[AlternateJavaComplete] findstart: " . a:findstart)
call javacomplete#logger#Log("[AlternateJavaComplete] base: " . a:base)
let ret = javacomplete#complete#complete#Complete(a:findstart, a:base, 1)
if type(ret) == type([])
  let b:is_completing_javasource = 1
  let b:array_choices = ret
  inoremap <buffer> <Tab> <C-r>=ChooseFirstFromJavaCompletion("\t")<cr>
  inoremap <buffer> <CR> <C-r>=ChooseFirstFromJavaCompletion("\n")<cr>
  inoremap <buffer> <Esc> <C-r>=CancelChoosingFromJavaCompletion()<cr>
  else
    let b:javasource_start_point = ret
  endif
  return ret
endfunction "}}}

fun! ChooseFirstFromJavaCompletion(callexpr) "{{{
  if exists("b:is_completing_javasource")
    unlet b:is_completing_javasource
  else
    return a:callexpr
  endif
  let last_point = col('.') - 2
  let str_to_check = getline('.')[b:javasource_start_point : last_point]
  let complete_str = filter(b:array_choices,
              \'v:val.word =~ "^" . str_to_check')[0].word
  let complete_str = complete_str[len(str_to_check) : ]
  iunmap <buffer> <Tab>
  iunmap <buffer> <CR>
  iunmap <buffer> <Esc>
  unlet b:javasource_start_point
  unlet b:array_choices
  return complete_str . "\<C-E>"
endfunction "}}}

fun! CancelChoosingFromJavaCompletion() "{{{
  iunmap <buffer> <Esc>
  iunmap <buffer> <CR>
  iunmap <buffer> <Tab>
  return "\<Esc>"
endfunction "}}}

augroup jcompl
  au!
  autocmd FileType java setlocal omnifunc=AlternateJavaComplete
augroup END

augroup jsetting
  au!
  au FileType java let b:end_complete_char = ';'
  au FileType java inoremap <buffer> ,. <C-o>:s/\v;?\s*$/;/<CR><End>
augroup END


augroup html
  au!
  autocmd FileType html set ft=htmldjango
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev atov @Override
iabbrev atb @Bean


if exists( "g:my_settings" )
  finish
endif
let g:my_settings = 1

"annoying
set guifont=Powerline_Consolas:h12:cANSI

" vim: ts=2 sw=2 sts=2 et:
