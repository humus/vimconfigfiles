""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normal mappings                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Plug>Nextcolor :NextColorScheme \| call repeat#set("\<Plug>Nextcolor")<cr>
nnoremap <silent> <Plug>Prevcolor :PrevColorScheme \| call repeat#set("\<Plug>Prevcolor")<cr>
nnoremap ygC :execute "normal \<Plug>Prevcolor"<cr>
nnoremap ygc :execute "normal \<Plug>Nextcolor"<cr>
nnoremap <leader>r :call ReloadFirefox()<CR>
nnoremap <F3> :Unite -start-insert file_mru<cr>
nnoremap <C-p> :call Unite_command()<cr>
nnoremap ygl :<C-r>=getline('.')
nnoremap <Space> :
nnoremap <S-Space> /\v
nnoremap Y y$
nmap <leader>b \
nnoremap <leader>. <C-^>
nnoremap <bar> <C-w>-
nnoremap _ <C-w>+
nnoremap <silent> <plug>NextBuffer :bnext \| call repeat#set("\<Plug>NextBuffer")<cr>
nnoremap }g :execute "normal \<Plug>NextBuffer"<cr>
nnoremap <silent> <plug>PreviousBuffer :bnext \| call repeat#set("\<Plug>PreviousBuffer")<cr>
nnoremap {g :execute "normal \<Plug>PreviousBuffer"<cr>
nnoremap <expr> <CR> Toggle_hls() ? ":set hls!\<cr>" : "\<CR>"
nnoremap j gj
nnoremap k gk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" insert/command mappings                                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap! gf <Right>
noremap! fg <Left>
noremap! <Leader>Q @
noremap! <C-j><C-j> ^
noremap! <C-j><C-k> `
noremap! <Leader>f >
noremap! <Leader>g <
noremap! <leader>t <><Left>
noremap! <silent><C-f> <Right>
noremap! <silent><C-b> <Left>
noremap! <leader>r []<Left>
noremap! <leader>c ()<Left>
noremap! <leader>x {}<Left>
noremap! <leader><leader>x {<CR>}<Up><End><CR>
noremap! <leader>b \
noremap! <leader>a ''<Left>
noremap! <leader>q ""<Left>
noremap! <leader>e =
noremap! <leader>s *
noremap! jk 
noremap! kj 
noremap! <leader>1 /
noremap! %% <C-R>=expand('%:h').g:f_sep<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" insert mappings                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-g><C-g> <C-x><C-o>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap {{ {}O

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" functions                                                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ReloadFirefox()
py << EOF
import socket
s = socket.socket()
s.settimeout(0.3)
s.connect(('127.0.0.1', 32000))
s.send('reload\n')
s.close()
EOF
endfunction

fun! Unite_command() "{{{
  if projectroot#get() != ''
    ProjectRootExe Unite -no-split -start-insert file_rec/git file_mru
  else
    ProjectRootExe Unite -no-split -start-insert file_rec/async file_mru
  endif
endfunction "}}}

fun! Toggle_hls() "{{{
  if &ft != 'qf'
    return 1
  endif
endfunction "}}}

