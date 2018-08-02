setlocal conceallevel=3
setlocal concealcursor=n
syntax region FilePath start=/^\/home/ end=/\/music\// conceal
"syntax match SongName /\/.*.mp3/
"highlight SongName cterm=bold ctermfg=yellow
highlight FilePath cterm=bold ctermfg=Blue ctermbg=black
