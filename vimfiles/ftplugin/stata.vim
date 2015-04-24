" Let vim know all types of commenting styles.
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
" Structural setting.
setlocal fdm=manual
setlocal wrap nolinebreak nolist textwidth=80 wrapmargin=0
"
" c==> only auto format the comments. (to comply with the 80 width standard)
setlocal formatoptions=crnqj






" Run the entire do file.
map <buffer> <C-CR> :<C-U>call RunIt() <CR>

" Execute the line under cursor (or selected lies).
"Toggle these when running ; delimited files.
noremap  <buffer> <CR> V:<C-U>call RunDoLines() <CR>
vnoremap <buffer> <CR> :<C-U>call RunDoLines() <CR>
"noremap  <buffer> <CR> V:s/;//<CR>:<C-U>call RunDoLines() <CR><ESC>:s/$/;/<CR>:nohl<CR>
"vnoremap <buffer> <CR> <esc>V:s/;//<CR>:<C-U>call RunDoLines() <CR><ESC>:s/$/;/<CR>:nohl<CR>


" Maybe small fixes.
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

iab <buffer> sj ******************************<c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>*******************************


" Old sources.

" Mappings for Stata Command.    
"autocmd FileType stata noremap <F8> :<C-U>call RunIt() <CR>
"autocmd FileType stata inoremap <F8> <Esc>:<C-U>call RunIt() <CR>
"autocmd FileType stata nnoremap <F9> :<C-U>call RunDoLines() <CR>
"autocmd FileType stata inoremap <F9> <Esc>:<C-U>call RunDoLines() <CR>
"autocmd FileType stata vnoremap <F9> :<C-U>call RunDoLines() <CR>
"
" <F11> is used to run a entire do file, from the beginning to the end.    
nnoremap <buffer> <F11> :<C-U>call RunIt() <ENTER>
inoremap <buffer> <F11> <Esc>:<C-U>call RunIt() <ENTER>
vnoremap <buffer> <F11> <Esc>:<C-U>call RunIt() <ENTER>

" <F12> is used to run a line command, regardless of whether the line is visually selected or not.
noremap  <buffer> <F12> V:<C-U>call RunDoLines() <CR>
inoremap <buffer> <F12> <ESC>V:<C-U>call RunDoLines() <CR>
vnoremap <buffer> <F12> :<C-U>call RunDoLines() <CR>

" Mapping for SOC coding, finished 5512 in the end.
"nnoremap <buffer> D j0f.x"+pbbx4li <esc>bhx
"nnoremap <buffer> DD j0f.s
"nnoremap <buffer> - <esc>j0f"ci"
"inoremap <buffer> - <esc>j0f"ci"
"inoremap <buffer> -- -
"inoremap <buffer> = <esc>}jV:<C-U>call RunDoLines()<CR>
"nnoremap <buffer> = }jV:<C-U>call RunDoLines()<CR>
"nmap <buffer> dd DD
