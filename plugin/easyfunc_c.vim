
scriptencoding utf-8

if exists('g:loaded_easyfunc_c')
    finish
endif
let g:loaded_easyfunc_c = 1


let s:save_cpo = &cpo
set cpo&vim

"選択範囲のテキスト取得
"let s:selected_text = @* 
let g:selected_text = "aa"
vnoremap f :call easyfunc_c#easyfunc_c( g:selected_text )<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

