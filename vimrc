syntax on
filetype indent on

call plug#begin(g:bundle_path)
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-vividchalk'
Plug 'junegunn/vader.vim'
Plug 'junegunn/jellybeans.vim'
Plug 'artur-shaik/vim-javacomplete2'
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

source $HOME/.vim/preferences/settings.vim
source $HOME/.vim/preferences/mappings.vim



" vim: sw=2 ts=2 sts=2 et
