function! fim#trial03#expr() abort
  let l:count = v:count1
  let l:c = nr2char(getchar())
  if l:c is# "\<Esc>"
    return "\<Esc>"
  endif

  let l:c_regex = '\C' . escape(l:c, '~"\.^$[]*')
  let l:idx = match(getline('.'), l:c_regex, col('.'), l:count)
  if l:idx < 0
    return
  endif

  return printf("v:call fim#trial03#f('%s', %d)\<CR>", l:c, l:count)
endfunction

function! fim#trial03#f(c, count) abort
  let l:c_regex = '\C' . escape(a:c, '~"\.^$[]*')
  let l:idx = match(getline('.'), l:c_regex, col('.'), a:count)
  if l:idx < 0
    return
  endif

  call cursor(line('.'), l:idx + 1)
endfunction
