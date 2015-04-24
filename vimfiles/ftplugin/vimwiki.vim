" Configure line breaking
setlocal linebreak nolist textwidth=0 wrapmargin=0 
" For <C-K> used for conforming the texts to 80 characters long.
" For some reason, marker z should not have been stored! Don't know why this happened, but this is exactly what I wanted.
nnoremap <C-K> mzggVGgq`z

setlocal formatoptions=roqjn
setlocal fdm=manual


nnoremap <buffer> <leader>T :set syntax=vimwiki<CR>
nnoremap <buffer> <leader>t :Voom vimwiki<CR>

"autocmd Filetype wiki 
nnoremap <buffer> <F10> I* [ ] <ESC>
inoremap <buffer> <F10> <ESC>I* [ ] 
nnoremap <buffer> <C-D> :VimwikiToggleListItem<CR>j

nnoremap <buffer> C VC

iab <buffer> sj ===<c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>===<CR><CR><C-R>=Eatchar('\s')<CR>

nmap <buffer> <silent> <C-CR> <Plug>VimwikiToggleListItem
nnoremap <leader>v :Voom vimwiki<CR>
