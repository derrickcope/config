"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ~/.config/nvim/init.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a                                     " Enable the use of the mouse.

set tabstop=4      	                            " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4                                " Number of spaces to use for each step of (auto)indent.
 
set expandtab                                   " Use the appropriate number of spaces to insert a <Tab>.
                                                " 
                                                " Spaces are used in indents with the '>' and '<' commands
                                                " and when 'autoindent' is on. To insert a real tab when
                                                " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab                                    "  When on, a <Tab> in front of a line inserts blanks
                                                " 
                                                " according to 'shiftwidth'. 'tabstop' is used in other
                                                " places. A <BS> will delete a 'shiftwidth' worth of space
                                                " at the start of the line.
 
set showcmd                                     " Show (partial) command in status line.

set number                                      " Show line numbers.

set showmatch                                   " When a bracket is inserted, briefly jump to the matching
                                                " one. The jump is only done if the match can be seen on the
                                                " screen. The time to show the match can be set with
                                                " 'matchtime'.
                                                "
set inccommand=nosplit                          "

set nocompatible

filetype plugin on
                        
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
"set foldlevel=100                              " Don't autofold anything (but I can still fold manually)
"set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds
"set foldclose=all
set foldcolumn=1
set foldopen=all 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visuals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

"colorscheme flattened_dark
"colorscheme onedark
"colorscheme candy
"colorscheme jellybeans
"colorscheme twilight
colorscheme molokai
"colorscheme lxvc
"airline configs
set noshowmode
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
" let NERDTreeMapOpenInTab='<ENTER>'              " NerdTree opens files in new tab
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


"set backspace=2                                " Influences the working of <BS>, <Del>, CTRL-W
                                                " 
                                                " and CTRL-U in Insert mode. This is a list of items,
                                                " separated by commas. Each item allows a way to backspace
                                  
                                                " over something.
 
set autoindent                                  " Copy indent from current line when starting a new line
                                                
" (typing <CR> in Insert mode
                                                " or when using the "o" or "O"
                                                " command).
 
set textwidth=175                               " Maximum width of text that is being inserted. A longer

                                                " line will be broken after white space to get this width.
 
 	
set ruler           	                        " Show the line and column number of the cursor position,
                    	                        " separated by a comma


set splitright

set splitbelow

"""""""""""""""""""""""""""""""""""""""""""""""""
"mappings
""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>ev :tabedit $MYVIMRC<cr>           " edit config in new tab
nmap <Leader>nh :nohlsearch<cr>                 " turn off highlighting
nmap <C-Right> <C-W><C-L>                       " change window during vsplit
nmap <C-Left> <C-W><C-H>
" nmap <Leader><Space> :NERDTreeToggle<cr>        " \ space open file browser
nmap <Leader><Space> :Vexplore<cr>
nnoremap <C-L> :bnext<cr>                       " control l next buffer
nnoremap <C-H> :bNext<cr>                       " control h previous buffer
nmap <Leader>p :TogglePencil<cr>                " toggle pencil

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup autosourcing
    autocmd!
    autocmd BufWritePost  ~/.config/nvim/init.vim source %      "autosave config file 
augroup END

" augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :Vexplore
" augroup END

augroup pencil
    autocmd!
    autocmd FileType markdown       call pencil#init({'wrap': 'soft', 'textwidth': 72})
                                \ | call lexical#init()
    autocmd FileType text           call pencil#init({'wrap': 'soft', 'textwidth': 72})
                                \ | call lexical#init()
    autocmd FileType mail           call pencil#init({'wrap': 'soft', 'textwidth': 72})
                                \ | call lexical#init()
augroup END
"plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
so ~/.config/nvim/plugins.vim


