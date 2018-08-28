""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mappings for vim
" ~/.config/nvim/mappping.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>ev :edit $MYVIMRC<cr>              " edit config in new buffer
nmap <Leader>nh :nohlsearch<cr>                 " turn off highlighting

"nmap <Leader><Space> :Vexplore<cr>
nnoremap <C-L> :bnext<cr>                       " control l next buffer
nnoremap <C-H> :bNext<cr>                       " control h previous buffer
"nnoremap <C-S-L> :wincmd l<cr>
"nnoremap <C-S-H> :wincmd h<cr>
nmap <Leader>s :set spell!<cr>                  " spell on
nmap <Leader>ns :set nospell!<cr>               " spell off
nmap <Leader>cs :set spell spellang=cn<cr>       " spell on cn

nmap    WW :w<cr>                               " save without exiting
nmap    QQ :q!<cr>                              " force exit without saving
tnoremap <ESC> <C-\><C-n>                       " remap ESC in terminal

" CMUS player mappings
nmap  <leader>co :CmusBrowser<cr>               " open cmus playlist in new buffer 
nmap  <leader>cs :CmusStop<cr>                  " cmus stop play 
nmap  <leader>cp :CmusPlay<cr>                  " cmus start play    
nmap  <leader>ce :PlaySelectedSong<cr>          " cmus play selected song from playlist 

" FZF
nmap <Leader><Space> :FZF<cr>
