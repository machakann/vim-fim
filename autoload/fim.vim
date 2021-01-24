function! fim#expr(mode) abort
  let l:count = v:count1
  let l:c = nr2char(getchar())
  if l:c is# "\<Esc>"
    if a:mode is# 'o'
        return "\<Esc>"
    else
        return ''
    endif
  endif
  if a:mode is# 'n' || a:mode is# 'x'
    let l:CTRL_U = "\<C-u>"
  else
    let l:CTRL_U = ''
  endif
  return printf(":%scall fim#f('%s', '%s', %d)\<CR>",
  \             l:CTRL_U, a:mode, l:c, l:count)
endfunction

function! fim#f(mode, c, count) abort
  let l:c_regex = '\C' . escape(a:c, '~"\.^$[]*')
  let l:idx = match(getline('.'), l:c_regex, col('.'), a:count)
  if l:idx < 0
    return
  endif

  if a:mode is# 'x'
    normal! gv
  elseif a:mode is# 'o'
    normal! v
  endif

  let l:selection = &selection
  set selection=inclusive
  try
    call cursor(line('.'), l:idx + 1)
  finally
    let &selection = l:selection
  endtry
endfunction
