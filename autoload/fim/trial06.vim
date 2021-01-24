function! fim#trial06#expr() abort
  let l:count = v:count1
  let l:c = nr2char(getchar())
  if l:c is# "\<Esc>"
    return "\<Esc>"
  endif
  return printf(":call fim#trial06#f('%s', %d)\<CR>", l:c, l:count)
endfunction

function! fim#trial06#f(c, count) abort
  let l:c_regex = '\C' . escape(a:c, '~"\.^$[]*')
  let l:idx = match(getline('.'), l:c_regex, col('.'), a:count)
  if l:idx < 0
    return
  endif

  let l:selection = &selection
  set selection=inclusive
  try
    normal! v
    call cursor(line('.'), l:idx + 1)
  finally
    let &selection = l:selection
  endtry
endfunction
