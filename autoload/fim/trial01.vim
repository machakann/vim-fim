function! fim#trial01#f() abort
  let l:count = v:count1
  let l:c = nr2char(getchar())
  if l:c is# "\<Esc>"
    return
  endif
  let l:c_regex = '\C' . escape(l:c, '~"\.^$[]*')
  let l:idx = match(getline('.'), l:c_regex, col('.'), l:count)
  if l:idx < 0
    return
  endif
  call cursor(line('.'), l:idx + 1)
endfunction
