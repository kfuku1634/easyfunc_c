
scriptencoding utf-8

if !exists('g:loaded_easyfunc_c')
    finish
endif
let g:loaded_easyfunc_c = 1

let s:save_cpo = &cpo
set cpo&vim

pyfile <sfile>:h:h/src/easyfunc_c.py
python import vim

function! easyfunc_c#easyfunc_c()
    python easyfunc_c()
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
