" Behavior of text wrapping.
setlocal formatoptions=rqctnjw

" Line breaking modification.
setlocal wrap linebreak nolist textwidth=80 wrapmargin=0 
setlocal foldmethod=manual
setlocal nofoldenable

" iab mapping for inserting time stamps.
"iab <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr><ESC>o
"ia <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr><ESC>o<backspace>
"ia <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>
iab <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr><ESC>


" <esc>o<esc>o<C-R>=Eatchar('\s')<CR><C-O>cc
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
setlocal iskeyword+=:
setlocal iskeyword+=-
setlocal iskeyword+=_

map <buffer> <C-s> :wall!<CR><leader>ll
imap <buffer> <C-s> <ESC>:wall!<CR>


" These are written before using Snippet (2015-02-22 18:10:27)
let g:Tex_Leader2 = '\'
let g:Tex_Env_sjlog="\\begin{stlog}\<CR>\\input{../../../tex/sj_files/<++>}\<CR>\\end{stlog}"
let g:Tex_Env_stlog="\\begin{stlog}\<CR>\\input{../../../tex/sj_files/<++>}\<CR>\\end{stlog}"

let g:Tex_Env_multi="\\begin{figure}[!htb]\<CR>\\centering\<CR>\\begin{subfigure}[b]{0.4\\textwidth}\<CR>\\includegraphics[width=\\textwidth]{../../../tex/<++>.eps}\<CR>\\caption{<++>}\<CR>\\end{subfigure}\<CR>~\<CR>\\begin{subfigure}[b]{0.4\\textwidth}\<CR>\\includegraphics[width=\\textwidth]{../../../tex/<++>.eps}\<CR>\\caption{<++>}\<CR>\\end{subfigure}\<CR>\\caption{<+Caption for the two pics+>}\<CR>\\label{<+label+>}\<CR>\\end{figure}"

let g:Tex_Env_regression="\\paragraph{<+Command for regression+>} $ $ \\newline\<CR>\\begin{adjustbox}{width=\\textwidth,totalheight=\\textheight,keepaspectratio}\<CR>\\input{../../../tex/<++>.tex}\<CR>\\end{adjustbox}\<CR>"
let g:Tex_Env_reg="\\paragraph{<+Command for regression+>} $ $ \\newline\<CR>\\begin{adjustbox}{width=\\textwidth,totalheight=\\textheight,keepaspectratio}\<CR>\\input{../../../tex/<++>.tex}\<CR>\\end{adjustbox}\<CR>"

let g:Tex_Env_mfile="\<CR>\\lstinputlisting[firstline=<+line-begin+>, lastline=<+line-end+>]{<++>.m}\<CR>"
let g:Tex_Env_mcode="\\begin{lstlisting}\<CR><++>\<CR>\\end{lstlisting}"



let g:Tex_Env_line="\<CR>\\noindent\\rule{\\textwidth}{1pt} % I am a line!\<CR>\<CR>"
let g:Tex_Env_frame="\\begin{frame}\<CR>\\frametitle{<+FrameTitle+>}\<CR><++>\<CR>\\end{frame}"

"vmap <buffer> <C-b> <Plug>Tex_MathBF
"vmap <buffer> <C-c> <Plug>Tex_MathCal
"vmap <buffer> <C-l> <Plug>Tex_LeftRight



nnoremap <buffer> <leader>c :CC<CR>
nnoremap <buffer> <leader>u :UC<CR>
nnoremap <buffer> <leader>t :TC<CR>
nnoremap <buffer> <leader><leader>T :set syntax=tex<CR>
nnoremap <buffer> <leader><leader>t :Voom latex<CR>


" Fix to dwm, to re-emphasis the mapping of <C-J>.
imap <C-J> <Plug>IMAP_JumpForward
nmap <C-J> <Plug>IMAP_JumpForward
vmap <C-J> <Plug>IMAP_JumpForward
vmap <C-J> <Plug>IMAP_DeleteAndJumpForward

" Use <leader>v to reveal structure by VOom
nnoremap <leader>v :Voom latex<CR>

" Not sure why F9 is not working. As of 2015-04-01 10:46:21
inoremap <silent> <Plug>Tex_Completion <Esc>:call Tex_Complete("default","text")<CR>
imap <buffer> <silent> <F9> <Plug>Tex_Completion
imap <buffer> <F9> <Plug>Tex_Completion

imap <buffer> <C-B> <Plug>Tex_Completion

" Latex folding using the Suite
let g:Tex_FoldedSections=""
let g:Tex_FoldedEnvironments=""
let g:Tex_FoldedMisc=""


" iab mapping that works better than snippets.
inorea ve \verb\|\|<Left><C-R>=Eatchar('\s')<CR>

" Disable concealing
setlocal conceallevel=0
