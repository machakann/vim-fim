let s:FALSE = 0
let s:TRUE = 1

let s:dotrepeat = s:TRUE
let s:c = ''

function! fim#trial07#expr() abort
  let s:dotrepeat = s:FALSE
  return ":call fim#trial07#f()\<CR>"
endfunction

function! fim#trial07#f() abort
  let l:count = v:count1
  if !s:dotrepeat
    let s:c = nr2char(getchar())
  endif

  if s:c is# "\<Esc>"
    return
  endif

  let l:c_regex = '\C' . escape(s:c, '~"\.^$[]*')
  let l:idx = match(getline('.'), l:c_regex, col('.'), l:count)
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
  let s:dotrepeat = s:TRUE
endfunction
