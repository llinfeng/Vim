nnoremap <buffer> K :<C-u>execute "!C:/<PythonDir>/Lib/pydoc.py " . expand("<cword>")<CR>

    let g:pymode_run_bind = '<leader>r'

nnoremap <buffer> <CR> :PymodeRun<CR>

let g:pymode_doc = 1


