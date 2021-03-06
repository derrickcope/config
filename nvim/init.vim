""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setting for nvim/vim
" ~/.config/nvim/init.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a                                     " Enable the use of the mouse.

set tabstop=2      	                            " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=2                                " Number of spaces to use for each step of (auto)indent.
 
set expandtab                                   " Use the appropriate number of spaces to insert a <Tab>.

set directory=.

set undodir=.

set smarttab                                    "  When on, a <Tab> in front of a line inserts blanks
                                                " 
                                                " according to 'shiftwidth'. 'tabstop' is used in other
                                                " places. A <BS> will delete a 'shiftwidth' worth of space
                                                " at the start of the line.
 
set clipboard=unnamedplus

set showcmd                                     " Show (partial) command in status line.

set number                                      " Show line numbers.

set relativenumber                              " Show relative line numbers, hybrid

set showmatch                                   " When a bracket is inserted, briefly jump to the matching
                                                " one. The jump is only done if the match can be seen on the
                                                " screen. The time to show the match can be set with
                                                " 'matchtime'.

set backspace=indent,eol,start                  " Influences the working of <BS>, <Del>, CTRL-W
                                                " and CTRL-U in Insert mode. This is a list of items,
                                                " separated by commas. Each item allows a way to backspace
                                                " over something.

set inccommand=nosplit                          "

set nocompatible

filetype plugin on

set omnifunc=syntaxcomplete#Complete            " completion ctrl x, ctrl o

set autoindent                                  " Copy indent from current line when starting a new line
                                                
                                                " (typing <CR> in Insert mode
                                                " or when using the "o" or "O"
                                                 " command).
 
set textwidth=175                               " Maximum width of text that is being inserted. A longer

                                                " line will be broken after white space to get this width.
 
 	
set ruler           	                        " Show the line and column number of the cursor position,
                    	                        " separated by a comma


set splitright                                " preferences for opening new windows

set splitbelow

set noshowmode                                " don't show mode at the bottom of the screen 

syntax enable
                        
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch                                    " When there is a previous search pattern, highlight all
                                                " its matches.
 
set incsearch                                   " While typing a search command, show immediately where the
                                                " so far typed pattern matches.
 
"set ignorecase                                 " Ignore case in search patterns.
 
"set smartcase                                  " Override the 'ignorecase' option if the search pattern
                                                " contains upper case characters.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldenable                                  " Turn on folding
set foldmethod=indent                           " Fold on the indent
set foldlevel=10                             " Don't autofold anything (but I can still fold manually)
"set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds
"set foldclose=all
set foldminlines=5
set foldcolumn=1
"set foldopen=all 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set termguicolors
"highlight Cursor guifg=white guibg=black
"highlight Cursor2 guifg=white guibg=cyan
"set guicursor=n-v-c:block-Cursor/lCursor
"set guicursor+=i-ci-ve:ver30-Cursor2/lCursor2
"set guicursor+=r-cr:hor30
"set guicursor+=o:hor30
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10
set guicursor=n-v-c:block,i-ci-ve:ver30,r-cr:hor30,o:hor30
"colorscheme flattened_dark
"colorscheme onedark
"colorscheme candy
"colorscheme jellybeans
"colorscheme twilight
colorscheme molokai
"colorscheme lxvc

hi MatchParen guibg=#000000 guifg=#FD971F cterm=reverse,bold

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}

au InsertEnter * hi StatusLine ctermbg=0 ctermfg=blue
au InsertLeave * hi StatusLine ctermbg=0 ctermfg=gray
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin variables 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"airline configs
"let g:airline_theme='dark'
"let g:airline#extensions#tabline#enabled = 1
"et g:airline_powerline_fonts =1

"file browser
let g:netrw_liststyle = 3                       " netrw view style
let g:netrw_banner = 0                          " no netrw banner
let g:netrw_browse_split = 4                    " vertical split netrw 
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Customize settings for vim-template plugin
let g:email = "derrick(at)thecopes.me"             " set email for template
let g:user  = "derrick cope"                    " set user name for template

" table-mode markdown compatible
let g:table_mode_corner="|"
let g:textutil_txt_encoding='utf-8'
"set ffs=unix,dos,mac                           "set ffs=unix,dos,mac

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3

" RustFmt
let g:rustfmt_autosave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""
" mappings
""""""""""""""""""""""""""""""""""""""""""""""""
so /home/derrick/.config/nvim/mapping.vim



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

so /home/derrick/.config/nvim/auto.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
so /home/derrick/.config/nvim/plugins.vim


