" Reproduce f command : f-imitated
" Last Change: 24-Jan-2021.
" Maintainer : Masaaki Nakamura <mckn@outlook.jp>

" License    : NYSL
"              Japanese <http://www.kmonos.net/nysl/>
"              English (Unofficial) <http://www.kmonos.net/nysl/index.en.html>
if exists("g:loaded_fim")
  finish
endif
let g:loaded_fim = 1

let s:save_cpo = &cpo
set cpo&vim

" Trial 1
onoremap <silent> <Plug>(fim-trial01) :call fim#trial01#f()<CR>

" Trial 2
onoremap <silent> <Plug>(fim-trial02) v:call fim#trial01#f()<CR>

" Trial 3
onoremap <silent><expr> <Plug>(fim-trial03) fim#trial03#expr()

" Trial 4
onoremap <silent> <Plug>(fim-trial04) :call fim#trial04#f()<CR>

" Trial 5
onoremap <silent> <Plug>(fim-trial05) :call fim#trial05#f()<CR>

" Trial 6
onoremap <silent><expr> <Plug>(fim-trial06) fim#trial06#expr()

" Trial 7
onoremap <silent><expr> <Plug>(fim-trial07) fim#trial07#expr()

" fim
nnoremap <silent><expr> <Plug>(fim) fim#expr('n')
xnoremap <silent><expr> <Plug>(fim) fim#expr('x')
onoremap <silent><expr> <Plug>(fim) fim#expr('o')

let &cpoptions = s:save_cpo
unlet s:save_cpo
