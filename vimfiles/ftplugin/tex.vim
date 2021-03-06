"set background=light
" Behavior of text wrapping.
setlocal formatoptions=crtnqj

" Line breaking modification.
setlocal wrap linebreak nolist textwidth=80 wrapmargin=0
setlocal foldmethod=manual
setlocal nofoldenable
"
" iab mapping for inserting time stamps.
"iab <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr><ESC>o
"ia <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr><ESC>o<backspace>
"ia <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>
iab <buffer> sj % <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr><ESC>
iab <buffer> := \coloneqq
iab <buffer> defeq \coloneqq
iab <buffer> limpt \lim_{x \to x_0}

" <esc>o<esc>o<C-R>=Eatchar('\s')<CR><C-O>cc
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
setlocal iskeyword+=:
setlocal iskeyword+=-
setlocal iskeyword+=_

map <buffer> <C-s> :wall!<CR>
inoremap <buffer> <C-s> <ESC>:wall!<CR>
inoremap <buffer> <F10> <F9>
nnoremap <buffer> <leader>v :Voom latex<cr>

"" These are written before using Snippet (2015-02-22 18:10:27)
"let b:Tex_Leader2 = '\'
"let b:Tex_Env_sjlog="\\begin{stlog}\<CR>\\input{../../../tex/sj_files/<++>}\<CR>\\end{stlog}"
"let b:Tex_Env_stlog="\\begin{stlog}\<CR>\\input{../../../tex/sj_files/<++>}\<CR>\\end{stlog}"
"
"let b:Tex_Env_multi="\\begin{figure}[!htb]\<CR>\\centering\<CR>\\begin{subfigure}[b]{0.4\\textwidth}\<CR>\\includegraphics[width=\\textwidth]{../../../tex/<++>.eps}\<CR>\\caption{<++>}\<CR>\\end{subfigure}\<CR>~\<CR>\\begin{subfigure}[b]{0.4\\textwidth}\<CR>\\includegraphics[width=\\textwidth]{../../../tex/<++>.eps}\<CR>\\caption{<++>}\<CR>\\end{subfigure}\<CR>\\caption{<+Caption for the two pics+>}\<CR>\\label{<+label+>}\<CR>\\end{figure}"
"
"let b:Tex_Env_regression="\\paragraph{<+Command for regression+>} $ $ \\newline\<CR>\\begin{adjustbox}{width=\\textwidth,totalheight=\\textheight,keepaspectratio}\<CR>\\input{../../../tex/<++>.tex}\<CR>\\end{adjustbox}\<CR>"
"let b:Tex_Env_reg="\\paragraph{<+Command for regression+>} $ $ \\newline\<CR>\\begin{adjustbox}{width=\\textwidth,totalheight=\\textheight,keepaspectratio}\<CR>\\input{../../../tex/<++>.tex}\<CR>\\end{adjustbox}\<CR>"
"
"let b:Tex_Env_mfile="\<CR>\\lstinputlisting[firstline=<+line-begin+>, lastline=<+line-end+>]{<++>.m}\<CR>"
"let b:Tex_Env_mcode="\\begin{lstlisting}\<CR><++>\<CR>\\end{lstlisting}"
"


let b:Tex_Env_line="\<CR>\\noindent\\rule{\\textwidth}{1pt} % I am a line!\<CR>\<CR>"
let b:Tex_Env_frame="\\begin{frame}\<CR>\\frametitle{<+FrameTitle+>}\<CR><++>\<CR>\\end{frame}"

"vmap <buffer> <C-b> <Plug>Tex_MathBF
"vmap <buffer> <C-c> <Plug>Tex_MathCal
"vmap <buffer> <C-l> <Plug>Tex_LeftRight



nnoremap <buffer> <leader>c :CC<CR>
nnoremap <buffer> <leader>u :UC<CR>
nnoremap <buffer> <leader>t :TC<CR>


"" Functional mappings: just to reinforce the correct ones.
"inoremap <buffer> <C-J> <Plug>IMAP_JumpForward
"nnoremap <buffer> <C-J> <Plug>IMAP_JumpForward
"vnoremap <buffer> <C-J> <Plug>IMAP_JumpForward
"vnoremap <buffer> <C-J> <Plug>IMAP_DeleteAndJumpForward

setlocal viewoptions-=folds

let maplocalleader = ";"
let g:maplocalleader = ";"
