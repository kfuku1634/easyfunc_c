
scriptencoding utf-8

if exists('g:loaded_easyfunc_c')
    finish
endif
let g:loaded_easyfunc_c = 1


let s:save_cpo = &cpo
set cpo&vim

"選択範囲のテキスト取得
let l:selected_text = @* 
command! -nargs=1 EasyFunc_C  :call <C-u>easyfunc_c#easyfunc_c(<f-args>)<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

