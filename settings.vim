let &runtimepath.=','.$HOME.'/vimfiles/bundle/xptsnippets'
let g:org_agenda_files = [$HOME.'/agenda.org']
let mapleader=","
let maplocalleader=","
set bs=2
set autoread
set enc=utf-8
set nocompatible
set et
set sw=4
set sts=4
set ts=4
set noswapfile
syntax on
set ignorecase
set smartcase
set autoindent
set smartindent
set guifont=Consolas:h10:cANSI
set guioptions=
set enc=utf-8
set ff=unix
set t_vb=
set novisualbell
set history=1000
set nospell
colo smyck
set ls=2

let $PATH='C:/git-sdk64/usr/bin:'.$PATH
set completeopt=longest,menuone

"Persistent undo
set undofile
set undodir=C:/home/portablevim/Data/Temp

"listchars
set list
set listchars =tab:»\ ,eol:¬,trail:·
set hidden

" Snippet triggering key:
let g:xptemplate_key = '<Leader><Tab>'
"

" Open the pop-up menu:
let g:xptemplate_key_pum_only = '<S-Tab>'
"
" Clear current placeholder and jump to the next:
"imap <C-d> <Tab>
"let g:xptemplate_nav_cancel = '<C-d>'
"
" Move to the next placeholder in a snippet:
let g:xptemplate_nav_next = '<Tab>'
"
" Go to the end of the current placeholder and in to insert mode:
"
"
" Move cursor back to previous placeholder:
let g:xptemplate_goback = '<C-g>'

let g:JavaComplete_UseFQN = 0
let g:JavaComplete_ClosingBrace = 1
let g:colorscheme_switcher_define_mappings=0
let g:JavaComplete_JvmLauncher=$JAVA_HOME . '/bin/java'
let g:airline#extensions#whitespace#trailing_format = 'Trail[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'Tab&Spc[%s]'
let g:slices_preferred_path='C:/home/r/code-slices'

augroup java
  au!
  au FileType java let b:end_complete_char=';'
  au FileType java setlocal omnifunc=javacomplete#Complete
augroup END

