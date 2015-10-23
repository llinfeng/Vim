" Set folding method
setlocal foldmethod=manual
setlocal nofoldenable

" For <C-K> used for conforming the texts to 80 characters long.
" For some reason, marker z should not have been stored! Don't know why this happened, but this is exactly what I wanted.
nnoremap <C-K> mzggVGgq`z


nnoremap <buffer> <leader>T :set syntax=vimwiki<CR>
nnoremap <buffer> <leader>t :Voom vimwiki<CR>

"autocmd Filetype wiki
nnoremap <buffer> <F10> I* [ ] <ESC>
inoremap <buffer> <F10> <ESC>I* [ ]
nnoremap <buffer> <C-D> :VimwikiToggleListItem<CR>j

nnoremap <buffer> C VC

" Time tag
"inorea <buffer> sj ===<c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>===<CR><CR><C-R>=Eatchar('\s')<CR>
"inorea <buffer> SJ <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>
ia <buffer> sj ===<c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>===<CR><CR><C-R>=Eatchar('\s')<CR>
ia <buffer> SJ <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>

nmap <buffer> <silent> <C-CR> <Plug>VimwikiToggleListItem
nnoremap <leader>v :Voom vimwiki<CR>
nnoremap <leader><leader>t :Voom vimwiki<CR>

" Configure line breaking, which involves too fields of editing: textwidth + formatoptions
" setlocal linebreak nolist textwidth=0 wrapmargin=0
setlocal wrap linebreak nolist textwidth=80 wrapmargin=0
setlocal formatoptions=crtnqj

" With conceallevel = 1:
"   1. URLs will be bended;
"   2. That bold-mark will be replaced by "-"
" With conceallevel = 2:
"   1. URLs are bended;
"   2. Additionally, internal marks will be hidden.
" Nevertheless, hiding chars and abridging display does not help too much.
"setlocal conceallevel=2
setlocal conceallevel=0

" Mappings:
inoremap  <C-E> <Plug>VimwikiIncreaseLvlSingleItem
nnoremap  <C-CR> <Plug>VimwikiVSplitLink


