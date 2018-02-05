syntax on
filetype indent on

call plug#begin(g:bundle_path)
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vividchalk'
Plug 'junegunn/vader.vim'
Plug 'junegunn/jellybeans.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dbakker/vim-projectroot'
Plug 'drmingdrmer/xptemplate', {'branch': 'rc'}
Plug 'humus/code-slices'
Plug 'humus/code-slices.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-ragtag'
Plug 'vim-airline/vim-airline'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-reload'
Plug 'altercation/vim-colors-solarized'
Plug 'mhinz/vim-startify'
call plug#end()

let s:path=expand('<sfile>:p:h')

execute "source " . s:path . "/settings.vim"
execute "source " . s:path . "/mappings.vim"

command! Esettings execute "e " . s:path . "/settings.vim"
command! Emappings execute "e " . s:path . "/mappings.vim"

call system('mkdir -p ' . s:path . '/undo')

" vim: sw=2 ts=2 sts=2 et
