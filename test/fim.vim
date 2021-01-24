scriptencoding utf-8


" Trial 01
let s:trial01 = themis#suite('trial01')
function! s:trial01.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial01)c"
  " call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  " call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial01)\<Esc>"
  call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial01)f"
  call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction



" Trial 02
let s:trial02 = themis#suite('trial02')
function! s:trial02.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial02)c"
  call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  " call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial02)\<Esc>"
  " call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial02)f"
  " call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  " call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction



" Trial 03
let s:trial03 = themis#suite('trial03')
function! s:trial03.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial03)c"
  call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial03)\<Esc>"
  call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial03)f"
  call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  " call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction



" Trial 04
let s:trial04 = themis#suite('trial04')
function! s:trial04.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial04)c"
  call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  " call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial04)\<Esc>"
  call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial04)f"
  call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction



" Trial 05
let s:trial05 = themis#suite('trial05')
function! s:trial05.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial05)c"
  call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  " call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial05)\<Esc>"
  call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial05)f"
  call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  " call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction



" Trial 06
let s:trial06 = themis#suite('trial06')
function! s:trial06.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial06)c"
  call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial06)\<Esc>"
  call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial06)f"
  call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction



" Trial 07
let s:trial07 = themis#suite('trial07')
function! s:trial07.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial07)c"
  call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial07)\<Esc>"
  call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim-trial07)f"
  call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction



" fim
let s:fim = themis#suite('fim')
function! s:fim.normal() abort
  call setline('.', 'abcde abcde abcde')
  execute "normal 0\<Plug>(fim)c"
  call g:assert.equals(col('.'), 3, 'basic')

  call setline('.', 'abcde abcde abcde')
  execute "normal 02\<Plug>(fim)c"
  call g:assert.equals(col('.'), 9, 'basic-count-2')

  call setline('.', 'abcde abcde abcde')
  execute "normal 03\<Plug>(fim)c"
  call g:assert.equals(col('.'), 15, 'basic-count-3')

  call setline('.', 'abcde abcde abcde')
  execute "normal 0\<Plug>(fim)\<Esc>"
  call g:assert.equals(col('.'), 1, 'basic-escape')
endfunction

function! s:fim.visual() abort
  let g:fim_mode = ''
  function! s:mode_check() abort
    let g:fim_mode = mode()
    return ''
  endfunction
  noremap <expr><silent> <Plug>(fim-test-modecheck) <SID>mode_check()


  let g:fim_mode = ''
  call setline('.', 'abcde abcde abcde')
  execute "normal 0v\<Plug>(fim)c\<Plug>(fim-test-modecheck)"
  call g:assert.equals(col('.'), 3, 'basic')
  call g:assert.equals(g:fim_mode, 'v', 'basic')

  let g:fim_mode = ''
  call setline('.', 'abcde abcde abcde')
  execute "normal 0v2\<Plug>(fim)c\<Plug>(fim-test-modecheck)"
  call g:assert.equals(col('.'), 9, 'basic-count-2')
  call g:assert.equals(g:fim_mode, 'v', 'basic-count-2')

  let g:fim_mode = ''
  call setline('.', 'abcde abcde abcde')
  execute "normal 0v3\<Plug>(fim)c\<Plug>(fim-test-modecheck)"
  call g:assert.equals(col('.'), 15, 'basic-count-3')
  call g:assert.equals(g:fim_mode, 'v', 'basic-count-3')

  let g:fim_mode = ''
  call setline('.', 'abcde abcde abcde')
  execute "normal 0v\<Plug>(fim)\<Esc>\<Plug>(fim-test-modecheck)"
  call g:assert.equals(col('.'), 1, 'basic-escape')
  call g:assert.equals(g:fim_mode, 'v', 'basic-escape')

  unlet g:fim_mode
endfunction

function! s:fim.operator_pending() abort
  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim)c"
  call g:assert.equals(getline('.'), 'de', 'success')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'de', 'success-dot')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim)\<Esc>"
  call g:assert.equals(getline('.'), 'abcde', 'escape')

  call setline('.', 'abcde')
  execute "normal 0d\<Plug>(fim)f"
  call g:assert.equals(getline('.'), 'abcde', 'fail')

  call setline('.', 'abcde')
  execute "normal 0."
  call g:assert.equals(getline('.'), 'abcde', 'fail-dot')
endfunction
