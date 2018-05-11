"""""""""""""""""""""""""""""""""""""""""""""""""
"plugin manager starts
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" Html surround tags
Plug 'tpope/vim-surround'

" Markdown
Plug 'tpope/vim-markdown'


" Syntastic
Plug 'scrooloose/syntastic'

" Airline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Various themes
Plug 'tomasr/molokai'

" Add templates
Plug 'aperezdc/vim-template'

" Vim table mode
Plug 'dhruvasagar/vim-table-mode'

" edit doc files
" Plug 'vim-scripts/textutil.vim'

" Vimwiki Plugin
Plug 'vimwiki/vimwiki'

" vim-autoclose
Plug 'townk/vim-autoclose'


" Make sure you use single quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" on-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugin manager ends
""""""""""""""""""""""""""""""""""""""""""""""""""""
