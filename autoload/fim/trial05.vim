function! fim#trial05#f() abort
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

  " 内包的文字単位にするためには 'selection' オプションが inclusive である
  " 必要がある
  let l:selection = &selection
  set selection=inclusive
  try
    normal! v
    call cursor(line('.'), l:idx + 1)
  finally
    let &selection = l:selection
  endtry
endfunction
