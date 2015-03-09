" Configure line breaking
setlocal linebreak nolist textwidth=80 wrapmargin=0 
setlocal formatoptions=roqtc 
setlocal fdm=manual


nnoremap <buffer> <leader>T :set syntax=vimwiki<CR>
nnoremap <buffer> <leader>t :Voom vimwiki<CR>

"autocmd Filetype wiki 
nnoremap <buffer> <F10> I* [ ] <ESC>
inoremap <buffer> <F10> <ESC>I* [ ] 
nnoremap <buffer> <C-D> :VimwikiToggleListItem<CR>j

nnoremap <buffer> C VC

iab <buffer> sj ===<c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>===

nmap <buffer> <silent> <C-CR> <Plug>VimwikiToggleListItem
