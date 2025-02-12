augroup netrw_mapping
		autocmd!
		autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
		noremap <buffer> s 1
		noremap <buffer> r 2
		noremap <buffer> o 3
		noremap <buffer> i 4
endfunction
