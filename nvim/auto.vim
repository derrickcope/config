""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocommands for vim
"~/.config/nvim/auto.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


augroup autosourcing
    autocmd!
     autocmd BufWritePost  ~/.config/nvim/init.vim source %      "autosave config file 
augroup END
