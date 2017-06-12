"""""""""""""""""""""""""""""""""""""""""""""""""
"plugin manager starts
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" Html surround tags
Plug 'tpope/vim-surround'

" Markdown
Plug 'tpope/vim-markdown'

" Vinegar
Plug 'tpope/vim-vinegar'

" Syntastic
Plug 'scrooloose/syntastic'

" nerdtree
" Plug 'scrooloose/nerdtree'

" Perl Support
" Plug 'WolfgangMehner/perl-support'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }

" Airline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Various themes
Plug 'tomasr/molokai'

" For composition
"Plug 'reedes/vim-lexical'
"Plug 'reedes/vim-pencil'

" Add templates
Plug 'aperezdc/vim-template'

" Vim table mode
Plug 'dhruvasagar/vim-table-mode'

" edit doc files
" Plug 'vim-scripts/textutil.vim'

" Vimwiki Plugin
Plug 'vimwiki/vimwiki'

" Ctrl-P
" Plug 'ctrlpvim/ctrlp.vim'

" Ucomplete me
" Plug 'vim-scripts/ucompleteme'

" Complete for c
" Plug 'vim-scripts/c.vim'
" Plug 'https://github.com/vim-scripts/c.vim.git'

" Markdown plugin
" Plug 'euclio/vim-markdown-composer'

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
