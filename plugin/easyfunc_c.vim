
scriptencoding utf-8

if exists('g:loaded_easyfunc_c')
    finish
endif
let g:loaded_easyfunc_c = 1


let s:save_cpo = &cpo
set cpo&vim

:nmap z :call easyfunc_c#easyfunc_c()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

