set buftype=nofile
set textwidth=180
let w:airline_disabled = 1 
"if type(currentstatus) ==  type(v:t_list)
  "let current = currentstatus[0]
"else 
  "let current = currentstatus[0]
"endif
setlocal statusline=%!CMUSstatus()

