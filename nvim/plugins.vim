"""""""""""""""""""""""""""""""""""""""""""""""""
"plugin manager starts
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/home/derrick/.config/nvim/plugged')

" Html surround tags
"Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'

" Markdown
Plug 'tpope/vim-markdown'

" fzf
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Airline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Various themes
Plug 'tomasr/molokai'

" Add templates
Plug 'aperezdc/vim-template'

" Vim table mode
"Plug 'dhruvasagar/vim-table-mode'

" edit doc files
" Plug 'vim-scripts/textutil.vim'

" Vimwiki Plugin
" Plug 'vimwiki/vimwiki'

" vim-notes
"Plug 'xolox/vim-notes'
"Plug 'xolox/vim-misc'

" vim-autoclose
Plug 'townk/vim-autoclose'

" Make sure you use single quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-easy-align'

" rust.vim
Plug 'rust-lang/rust.vim'

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

" CMUS
Plug '~/.config/nvim/vim.cmus'

" Add plugins to &runtimepath

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugin manager ends
""""""""""""""""""""""""""""""""""""""""""""""""""""
