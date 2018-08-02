function! CMUSstatus()
  let cmd = "cmus-remote -Q"
  let cmdary = split(system(cmd), '\n')
  for settag in cmdary
     if match(settag,'tag title .\+') >= 0
       let title = join(remove(split(settag),2,-1))
     endif
     if match(settag, 'tag artist .\+') >= 0
       let artist = join(remove(split(settag),2,-1))
     endif
     if match(settag, 'set repeat .\+') >= 0
       let repeat = join(remove(split(settag),2,-1))
     endif
     if match(settag, 'set shuffle .\+') >= 0
       let shuffle = join(remove(split(settag),2,-1))
     endif
     if match(settag, 'set vol_left .\+') >= 0
       let volleft = join(remove(split(settag),2,-1))
     endif
     if match(settag, 'set vol_right .\+') >= 0
       let volright = join(remove(split(settag),2,-1))
     endif
  endfor
  if match(cmdary[1], 'file .\+') >= 0
    let current = "song: " . title . " artist: " . artist
                  \ . " repeat: " . repeat . " shuffle: " . shuffle .
                  \ " vol left: " . volleft . " vol right: " . volright
  else
    let current = "no song in que"
  endif
    return current

endfunction

function! CMUSlist()
  let cmd = "cmus-remote -C 'save -p -'"
  let playlist = split(system(cmd), '\n')
  for track in playlist
    if(playlist[0] == track)
      execute "normal! LGdGI" . track
    else
      call append(line('$'), track)
    endif
  endfor
endfunction

function! CMUSopen()
  if(bufexists('win.cmus'))
    let mpcwin = bufwinnr('win.cmus')
    if(mpcwin == -1)
      execute "sbuffer " . bufnr('win.cmus')
    else
      execute mpcwin . 'wincmd w'
      return
    endif
  else
    execute "10 new win.cmus"
  endif
  call CMUSlist()
endfunction

function! CMUSplaysong(no)
  let song = getline(a:no)
  let cmdcom = "cmus-remote -C "
  let cmdarg = "\"player-play " . song . "\""
  let cmd = cmdcom . cmdarg
  let playsong = system(cmd)
  setlocal statusline=%!CMUSstatus()
endfunction


function! CMUSplay()
  let cmd = "cmus-remote -p"
  let play = system(cmd)
endfunction

function! CMUSstop()
  let cmd = "cmus-remote -s"
  let stop = system(cmd)
endfunction


function! CMUSloadplaylist(playlist)
  let cmda = "cmus-remote -C 'load -p '"
  let list = "/home/derrick/music/" . a:playlist
  let cmd = cmda . list 
  let loadplaylist = system(cmd)
  if(bufexists('win.cmus'))
    execute "bw win.cmus" 
  endif
  echomsg "loaded: " . list
  call CMUSopen()
endfunction

command! CmusBrowser call CMUSopen()
command! CmusPlay call CMUSplay()
command! CmusStop call CMUSstop()
command! PlaySelectedSong call CMUSplaysong(line('.'))
command! -nargs=1 CmusPlayList call CMUSloadplaylist(<args>)


