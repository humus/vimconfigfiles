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
let s:path=expand('<sfile>:p:h')
execute "set undodir=" . s:path . "/undo"
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


augroup jsetting
  au!
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
