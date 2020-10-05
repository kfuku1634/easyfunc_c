
scriptencoding utf-8

if !exists('g:loaded_easyfunc_c')
    finish
endif
let g:loaded_easyfunc_c = 1

let s:save_cpo = &cpo
set cpo&vim

py3file <sfile>:h:h/src/easyfunc_c.py
python3 import vim

function! easyfunc_c#easyfunc_c( selected_text ) 
    python3 easyfunc_c( vim.eval('a:selected_text') )
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
