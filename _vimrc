set background=light
" Let plug.vim handle the packages {{{
call plug#begin('C:/Vim/plugged')
Plug 'MarcWeber/vim-addon-async'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'
Plug 'altercation/vim-colors-solarized'
"Plug 'danielmiessler/VimBlog'
Plug 'dkprice/vim-easygrep'
Plug 'finbarrocallaghan/highlights.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'kien/tabman.vim'
Plug 'klen/python-mode'
Plug 'kshenoy/vim-signature'
Plug 'llinfeng/FeralToggleCommentify.vim'
Plug 'llinfeng/LanguageTool'
Plug 'llinfeng/dwm.vim'
Plug 'llinfeng/linediff.vim'
Plug 'llinfeng/vim-airline'
Plug 'llinfeng/vim-latex-suite'
Plug 'llinfeng/vim-snipmate'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'ntpeters/vim-better-whitespace'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
"Plug 'twe4ked/vim-colorscheme-switcher'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/listmaps.vim'
Plug 'vim-scripts/matlab_run.vim'
Plug 'vim-scripts/restore_view.vim'
Plug 'vim-scripts/shuffle.vim'
Plug 'vim-voom/VOoM'
Plug 'vimwiki/vimwiki'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-reload'
Plug 'xolox/vim-shell'
" Add Support for R
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'jalvesaq/Nvim-R'
" Plugin for storing views?
Plug 'mhinz/vim-startify'
" Add plugins to &runtimepath
call plug#end()
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The Old _vimrc settings (May be a minefield)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Bitstream_Vera_Sans_Mono:h12:cANSI
"set guifont=Bitstream_Vera_Sans_Mono:h24:cANSI
set fileencoding=utf-8
set encoding=utf-8
" Preamble {{{
" Enable filetype plugin
filetype plugin on
filetype indent on
" The new feature for Vim 7.4.338 ==> To wrap a long line with indentation!
set breakindent
" Other fundamental options.
set fdm=manual
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ";"
let g:maplocalleader = ";"
set nocompatible
" Let Vim behave itself in a modern way
"Disable Ex mode
nnoremap Q <Nop>
nnoremap gQ <Nop>
" }}}
" Vim settings {{{
" Change current directory to the file of the buffer.
autocmd BufEnter * silent! lcd %:p:h
" Linfeng's Directory setting {{{
set undodir=C:\Users\llinfeng\Documents\Vim-document\undodir
set rtp+=c:\Vim\vimfiles\bundle\vim-snipmate\snippets\
let path='C:/Vim/vimfiles/bundle'
" For handling the .swp file and files that ends with ~
set noswapfile
" Set to auto read when a file is changed from the outside
set autoread
set directory=C:\Users\llinfeng\Onedrive\Vim-document\VimSwapFiles
set viewdir=C:\Users\llinfeng\Onedrive\Vim-document\ViewFiles
"Backup files
set backup " Backups are nice
set backupdir=C:\Users\llinfeng\Onedrive\Vim-document\VimBackupFiles
"Persistent undo
set undofile " So is persistent undo
set undolevels=10000 " Maximum number of changes that can be undone
set undoreload=10000 " Maximum number lines to save for undo on a buffer reload
set undodir=C:\Users\llinfeng\Onedrive\Vim-document\undodir
"Memory of commands on command line.
set history=1000
"Diable beeping
set noerrorbells
set novisualbell
" }}}
" Canned 灏佸瓨 {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 鍚姩绐楀彛鏈€澶у寲, maximizing the interface upon start.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To maximize the Vim window in Windows. Does not grantee proper functionality in *nix environment.
if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window.
    au GUIEnter * simalt ~x "maximum the initial window
else
    " This is console Vim.
    if exists("+lines")
        set lines=50
    endif
    if exists("+columns")
        set columns=100
    endif
endif
" Returns true if paste mode is enabled [Used for customizing the status line.
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
" }}}
" Set-commends: Customize my editor {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Setting for Vim functionality.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To be god like coder who concerned about 80 and 120 boundaries.
let &colorcolumn="80,".join(range(120,999),",")
" Enabling Spell-check and make changes to how it looks.
set spell spelllang=en_us spell
    set spellsuggest=fast,20 "Don't show too much suggestion for spell check.
    set spellfile=c:\Users\llinfeng\Dropbox\Tool\Vim_Spell_add\en.utf-8.add
"    set spellfile+=c:\vim\vimfiles\spell\en.utf-8.add
" To enable spell check for main body of tex file.
autocmd BufEnter * syntax spell toplevel
" to jump BRIEFLY to the matching bracket
set showmatch
" leaving one line above the screen
set scrolloff=1
"Always show current position
set ruler
set hidden
" Wild menu settings {{{
set wildmenu
" Ignore compiled files (including those from tex files).
set wildignore=*.o,*~,*.pyc,*.aux,*.bak,*.bbl,*.blg,*.out,*.synctex,*.png,*.jpg,*.pdf
set wildignore+=*.pdfsync,*.sty,*.bst
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*.xlsx,*.mm,*.pptx,*.docx,*.doc,*.xls
set wildignore+=*.bbl,*.blg,*.sav
set wildignore+=*.dta,*.csv "Comment his when trying to get a grasp of the structure of the dataset
set wildmode=list:full
"set wildmode=""
"set wildmode=longest,list
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Setting for text editor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indenting
set autoindent
set smartindent
" Plain tab implementation: no exception. Tab == 4 spaces.
set expandtab
set tabstop=4
set shiftwidth=4
"inoremap <S-Tab> <C-d>
nnoremap <Tab> <c-w>w
nnoremap <S-Tab> <c-w>W
" Line numbering.
set number
set relativenumber
" The master setting (with wrapping)
set wrap
set linebreak
set nolist " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l "No reformatting while typing on the exciting line.
" Further settings are to be found in the
    " c:\vim\vimfiles\ftplugin\
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search Options, search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For manipulating the search environment.
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" For regular expressions turn magic on
set magic
" Show matching bracket when cursor is over its pairing bracket.
set showmatch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Vim display setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight the row and column. (row = line)
set nocursorline
set nocursorcolumn
" Sets how many lines of history VIM has to remember
set history=200
" For stopping the display of @ when a line goes too long and got wrapped.
set display=lastline
"How many tenths of a second to blink
set matchtime=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> GUI Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guioptions+=a
set guioptions+=r " Make sure that the touch-screen effectiveness.
set guioptions+=h
set guioptions-=m  "menu bar (leave it as is, as when doing formal editing,
                   "will enter Full screen mode nevertheless)
set guioptions-=T
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
set guioptions-=e
set guioptions-=l
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> MISC: not fully examined part.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"For better typing experience
set nrformats-=octal
set backspace=indent,eol,start
"Fixes slow O inserts (all three)
set timeout
set timeoutlen=1000
set ttimeoutlen=100
"For splitting new windows: put it below
set splitbelow
" }}}
" }}}

" Vim-Latex {{{
filetype plugin on
filetype indent on
set shellslash
set grepprg=grep\ -nH\ $*
set diffexpr=MyDiff()
function! MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
            let cmd = '""' . $VIMRUNTIME . '\diff"'
            let eq = '"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
let g:tex_flavor='latex'
let g:Tex_GotoError=0 " Will keep the cursor as is.
"let g:Tex_IgnoredWarnings =
"        \'Underfull'."\n".
"        \'Overfull'."\n".
"        \'specifier changed to'."\n".
"        \'You have requested'."\n".
"        \'Missing number, treated as zero.'."\n".
"        \'There were undefined references'."\n".
"        \'Citation %.%# undefined'."\n".
"        \'Font Warning'
let g:tex_IgnoredWarnings =
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n".
    \'Latex Warning'."\n"
let g:Tex_IgnoreLevel = 9
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
"let g:Tex_CompileRule_pdf = 'xelatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
"let g:Tex_ViewRule_pdf = 'sumatrapdf'
let g:Tex_ViewRule_pdf = 'C:\Program Files\SumatraPDF\SumatraPDF.exe -reuse-instance -inverse-search "\"C:\vim\vim80\gvim\"  -c \":RemoteOpen +\%l \%f\"" '
"let g:Tex_ViewRule_pdf = 'C:\Program Files\SumatraPDF\SumatraPDF.exe gvim --remote +%l %f -reuse-instance -inverse-search " " '
"let g:Tex_ViewRule_pdf = 'skim -reuse-instance -inverse-search "\"C:\vim\vim74\gvim\"  -c \":RemoteOpen +\%l \%f\"" '
" "C:\Program Files (x86)\Notepad++\notepad++.exe" -n%l "%f"
let g:Tex_MultipleCompileFormats='pdf'
" }}}

" NERDTree {{{
let NERDTreeIgnore=['\~$', '\.aux', '\.pdf','\.out', '\.pdfsync', '\.synctex', '\.latexmain', '\.bst', '\.sty', '\.bbl', '\.blg', '\.bak', '\.sav']
let NERDTreeWinSize=35
" }}}


" Vim Airline {{{
" Show status line
set laststatus=2
" Change theme
let g:airline_theme='solarized'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Displaying Time ^.^
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
" Word count?
let g:airline_section_x = "%{airline#extensions#pandoc#word_count()} Words"

" Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"To avoid the short pause in insert mode
set ttimeoutlen=50
" }}}

" VimWiki {{{
" Use <Leader>whh to both update the *.wiki and copy/overwrite `style.css`
nmap <leader>whh :VimwikiAll2HTML<CR>
"Settings
let g:vimwiki_use_mouse = 1
let g:vimwiki_use_calendar = 1
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_auto_checkbox = 1
"let g:vimwiki_folding='expr'
let g:vimwiki_table_auto_fmt = 1
let g:vimwiki_html_header_numbering_sym = '.'
let g:vimwiki_conceallevel = 0
let g:vimwiki_html_header_numbering = 1
" Vimwiki maps the tab key to jumping to the next cell when editing a table. You can try to disable this mapping by putting this line into you vimrc:
let g:vimwiki_table_mappings = 1
" First wiki, for academic use
let wiki_1 = {}
let wiki_1.index = 'Academia'
" This option is turned down since Vimwiki cannot convert markdown syntax to html.
"let wiki_1.syntax = 'markdown'
let wiki_1.path = 'C:\Users\llinfeng\Dropbox\Wiki\Warehouse'
let wiki_1.diary_rel_path = ''
let wiki_1.diary_index = 'Journal'
let wiki_1.path_html = 'C:/Users/llinfeng/Dropbox/Wiki/html'
let wiki_1.html_header = 'C:/Users/llinfeng/Dropbox/Wiki/html'
let wiki_1.template_path = 'C:/Users/llinfeng/Dropbox/Shu/HTML/Template-Defualt'
let wiki_1.template_default = 'default'
let wiki_1.template_ext = '.html'
let wiki_1.auto_export = 0
" Second wiki, for personal use.
let wiki_2 = {}
let wiki_2.index = 'Life'
let wiki_2.path = 'C:\Users\llinfeng\Dropbox\Wiki\Warehouse'
let wiki_2.diary_rel_path = ''
let wiki_2.diary_index = 'Journal'
let wiki_2.path_html = 'C:/Users/llinfeng/Dropbox/Wiki/html'
let wiki_2.html_header = 'C:/Users/llinfeng/Dropbox/Wiki/html'
let wiki_2.template_path = 'C:/Users/llinfeng/Dropbox/Shu/HTML/Template-Defualt'
let wiki_2.template_default = 'default'
let wiki_2.template_ext = '.html'
let wiki_2.auto_export = 0
" Third wiki, for working purpose (not heavily used.)
let wiki_3 = {}
let wiki_3.index = 'Work'
let wiki_3.path = 'C:\Users\llinfeng\Dropbox\Wiki\Warehouse'
let wiki_3.path_html = 'C:/Users/llinfeng/Dropbox/Wiki/html'
let wiki_3.html_header = 'C:/Users/llinfeng/Dropbox/Wiki/html'
let wiki_3.template_path = 'C:/Users/llinfeng/Dropbox/Shu/HTML/Template-Defualt'
let wiki_3.template_default = 'default'
let wiki_3.template_ext = '.html'
let wiki_3.auto_export = 0
" This is the "make" commend that constructs the two wiki's.
let g:vimwiki_list = [wiki_1, wiki_2, wiki_3]
" }}}

" xolox-shell {{{
" Customizing the xolox-shell, for full-screen looks of Vim the editor
let g:shell_fullscreen_always_on_top = 0
let g:shell_fullscreen_items="mT"
"}}}
" Voom {{{
let g:voom_tree_width = 17
let g:voom_tree_placement = "right"
" }}}
" Unite {{{
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" Search through yank history.
let g:unite_source_history_yank_enable = 1
let g:unite_source_line_enable_highlight = 1
" Mappings and shortcut at command line.
"nnoremap <c-l> :Unite file buffer<CR>
nnoremap <c-cr> :Unite -start-insert file_mru<CR>
"nnoremap <c-m> :Unite -start-insert file_mru<CR>
"nnoremap <C-L> :Unite -start-insert line<CR>
"nnoremap <S-CR> :Unite -start-insert file_mru<CR>
"nnoremap S :Unite -start-insert file buffer file_mru<CR>
" Leader mappings for Unite
nnoremap <leader>l :Unite -start-insert line<CR>
"nnoremap <leader>y :<C-u>Unite history/yank<CR>
"nnoremap <leader>s :Unite -start-insert file buffer file_mru<CR>
"nnoremap <leader>g :Unite -start-insert grep<CR>
"nnoremap <leader>m :Unite -start-insert file_mru<CR>
"nnoremap <leader><leader> :Unite -start-insert file buffer file_mru<CR>
"nnoremap <leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>
"nnoremap <leader>m :<C-u>Unite -start-insert file_mru<CR>
" Command line mapping for Unite
command! M :Unite -start-insert file_mru
" }}}
" Solarized Coloring {{{
syntax enable
" All parameters should be set before calling the color scheme.
let g:solarized_contrast = "low"
let g:solarized_termcolors=256
"Or | "high" or "low"
let g:solarized_visibility="normal"
let g:solarized_italic=0
"let g:solarized_bold=0
let g:solarized_degrade   =   0
call togglebg#map("<leader>ttt")
" Color scheme and background.
" Only enforce colorscheme  after having specified its parameters.
colorscheme solarized
"colorscheme papayawhip
"default
"olive
" }}}
" restore_view {{{
"The suggested options for functionality of the plug-in.
set viewoptions=cursor,folds,slash,unix
" }}}
" VIm-shell {{{
let g:shell_mappings_enabled = 1
nnoremap <C-S-CR> :Open<CR>
" }}}
" DWM (for window managing) {{{
let g:dwm_master_pane_width="50%"
nnoremap <c-c> <C-W>c
" }}}
" twe4ked/vim-colorscheme-switcher {{{
nnoremap <F6> :call NextColor(1)<CR>
nnoremap <F5> :call NextColor(-1)<CR>
nnoremap <A-F5> :call NextColor(0)<CR>
"}}}

" AutoCommand sequence {{{
" Recognize markdown files.
autocmd BufNewFile,BufReadPost *.md setlocal filetype=markdown
" File type specific recognition scheme.
autocmd BufRead,BufNewFile *.log set ft=stata
" Auto save.
"autocmd FocusLost * stopinsert | wall!
autocmd FocusLost *  wall!
" Auto save upon each key-stroke. This will save the effort of constantly attending to the saving task. I am saving write oto the heard drive when I am typing.
"autocmd TextChangedI *  silent write!
"autocmd TextChangedI, TextChanged silent write
"autocmd TextChanged,TextChangedI <buffer> silent write
" MISC setting.
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |   exe "normal g`\"" | endif
" Auto source _vimrc upon saving.
" TODO: This is often distorting the coloration of Vim, especially the coloration of the tab line.
augroup vimscript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
" }}}

" Leader Mapping {{{
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
nnoremap <Leader>d :bd<CR>:bnext<CR>
nnoremap <Leader>D :bd!<CR>
nnoremap <Leader>e :e $MYVIMRC<CR>
noremap <leader>f <ESC>:Fullscreen<CR>
" For togging the Menu.
nnoremap <leader>M :if &go=~'m'<bar>set go-=m<bar>else<bar>set go+=m<bar>endif<cr>
nnoremap <leader><space> :nohl<CR>
" For buffer management
nnoremap <leader>o :only<CR>
" For triggering commenting, used "FeralToggleCommentify.vim"
nnoremap <leader>c :CC<CR>
nnoremap <leader>u :UC<CR>
nnoremap <leader>t :TC<CR>
vnoremap <leader>c :CC<CR>
vnoremap <leader>u :UC<CR>
vnoremap <leader>t :TC<CR>
" Construct a table though Vimwiki, with column-num + row-num.
nnoremap <leader>table :VimwikiTable
""""""""""""""""  Of potential use """""""""""""""""""""""""""""""""""""""""""""
" k for keyword, use the system local grep.
" easy-grep had solved this issue. <leader>vv was used there.
"nnoremap <leader>k :grep <cword> *<CR>
nnoremap <leader>w :wall!<CR>
" For invoking the Work wiki.
nnoremap <leader>W :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/Work.wiki<CR>
"nnoremap <leader>W <Plug>VimwikiMakeDiaryNote
" }}}

" Mapings {{{
" Line-toggle using Alt+J/K {{{
" ## Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nnoremap <M-j> mz:m+<cr>`z
nnoremap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
nnoremap <A-j> mz:m+<cr>`z
nnoremap <A-k> mz:m-2<cr>`z
vmap <A-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <A-k> :m'<-2<cr>`>my`<mzgv`yo`z
"}}}
" Mapping for key-combination  {{{
"Ctrl keys
nmap <C-s> :wall!<CR>
inoremap <C-s> <ESC>:wall!<CR><right>
inoremap <C-BS> <C-W>
nnoremap <c-p> :bp<cr>
nnoremap <c-j> :bn<cr>
"Alt keys
nnoremap <M-w> :tabclose<CR>
nnoremap <M-c> :tabnew<CR>
nnoremap <M-n> :tabnext<CR>
nnoremap <M-p> :tabprevious<CR>
" For adding a hard linkbreak at the point of cursor, silently.
nnoremap <S-q> i<CR><ESC>
" }}}
" Mapping for Single Keys & (F1-F12) keys {{{
" F1 mapping: to find spaces totaling more than one; as writing assistance.
nnoremap <F1> / \{2,}<CR>
" Short key feature for toggling
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :windo set scrollbind!<cr>
nnoremap <F4> :GundoToggle<CR>
" F5 and F6 used for toggling the color schemes.
"nnoremap <silent> <F9> :ToggleSlash<CR>
"nnoremap <silent> <F10> :ToggleSlash<CR>
" F11 had been used by shell to toggle full screen view.
nnoremap <silent> <F12> :ToggleSlash<CR>
vnoremap <silent> <F12> :ToggleSlash<CR>
" }}}
" Mapping for moving cursor around (both windows and tabs) {{{
" Treat long lines as break lines (useful when moving around in them)
noremap <home> g0
noremap <end> g$
" }}}
" Mapping for Windows {{{
"Arrow keys in insert mode.
inoremap <silent> <Down> <C-o>gj
inoremap <silent> <Up> <C-o>gk
inoremap <home> <C-o>g0
inoremap <end> <C-o>g$
" Behave like Win:
vnoremap <BS> d
"When having mapped <CR> somewhere
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>
" The following are from the system default windows key-mapping modifier.
map <C-V>		"+gP
cmap <C-V>		<C-R>+
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']
imap <S-Insert>		<C-V>
vmap <S-Insert>		<C-V>
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
vnoremap <C-C> "+y
" }}}
" MISC mappings {{{
" Space as page down.
nnoremap <space> <C-F>
"}}}
" }}}


" Command Line: {{{
" Command line shortcuts for font size
command! F :set guifont=Bitstream_Vera_Sans_Mono:h15:cANSI
command! Fnormal :set guifont=Bitstream_Vera_Sans_Mono:h12:cANSI
command! FONT :set guifont=Bitstream_Vera_Sans_Mono:h18:cANSI
" Command line shortcuts for motion.
command! O only
command! R right
command! Co :copen
command! CO :copen
command! C :center
" Command line shortcuts for files.
command! L :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/Life.wiki
command! Spell :e c:\Users\llinfeng\Dropbox\Tool\Vim_Spell_add\en.utf-8.add
command! S :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/stata.wiki
command! V :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/Vault.wiki
command! T :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/todo.wiki
command! Shu :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/shu.wiki
command! D :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/dao.wiki
command! Sstata :edit c:/vim/plugged/vim-snipmate/snippets/stata.snippets
command! Stex :edit c:/vim/plugge/vim-snipmate/snippets/tex.snippets
command! Ttex :edit C:/vim/plugged/vim-snipmate/snippets/tex.snippets
command! Folder :e C:/Users/llinfeng/Dropbox/Shu/Stata/DeployingFolderStructure.do
command! Vstata :e c:/vim/vimfiles/ftplugin/stata.vim
command! FTtex :e c:/vim/vimfiles/ftplugin/tex.vim
command! U :e c:/Users/llinfeng/Dropbox/Wiki/Warehouse/URL.wiki
command! Stata :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/stata.wiki
command! D :e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/dao.wiki
" Command line shortcuts for sourcing.
command! S :so $MYVIMRC
nnoremap <leader>s :so $MYVIMRC<CR>
command! SO :so $MYVIMRC
command! So :so $MYVIMRC
command! DU :diffupdate
" }}}

" User defined functions {{{
" Vim as Stata IDE, the support functions {{{
" Run the whole do file at a time.
    fun! RunIt()
        wa
        !start /min "C:\Vim\vimfiles\ftplugin\Stata-Vim-Suite\rundo.exe" "%:p"
    endfun
" Run the lines that has been visually selected.
    fun! RunDoLines()
        let selectedLines = getbufline('%', line("'<"), line("'>"))
        if col("'>") < strlen(getline(line("'>")))
            let selectedLines[-1] = strpart(selectedLines[-1], 0, col("'>"))
        endif
        if col("'<") != 1
            let selectedLines[0] = strpart(selectedLines[0], col("'<")-1)
        endif
        let temp = tempname() . ".do"
        call writefile(selectedLines, temp)
        " *** CHANGE PATH AND NAME TO REFLECT YOUR SETUP. USE \\ INSTEAD OF \ ***
        exec "!start C:\\Vim\\vimfiles\\ftplugin\\Stata-Vim-Suite\\rundo.exe " . temp
        " Delete the temp file after Vim closes
        au VimLeave * exe "!del -y" temp
    endfun
" }}}
" Toggle Slash in a line {{{
nnoremap <c-s-t> :vs<bar>:b#<cr>
function! ToggleSlash(independent) range
  let from = ''
  for lnum in range(a:firstline, a:lastline)
    let line = getline(lnum)
    let first = matchstr(line, '[/\\]')
    if !empty(first)
      if a:independent || empty(from)
        let from = first
      endif
      let opposite = (from == '/' ? '\' : '/')
      call setline(lnum, substitute(line, from, opposite, 'g'))
    endif
  endfor
endfunction
command! -bang -range ToggleSlash <line1>,<line2>call ToggleSlash(<bang>1)
" Toggle slash for the line.
nnoremap  <leader>/ :ToggleSlash<CR>
vnoremap  <leader>/ :ToggleSlash<CR>
" }}}
" Toggling capitalization in a roll {{{
"Source: http://vim.wikia.com/wiki/Switching_case_of_characters
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
"}}}
" }}}


" Functional scripts and mappings. {{{
" Middle-key as crosshairs.
nnoremap <MiddleMouse> <LeftMouse>*<C-O>
" For the cursor line, split into new lines by spaces
nnoremap <leader><leader><space> :s/ /\r/g<CR>
" Undo bdelete (only one level though)
autocmd BufDelete * let g:latest_deleted_buffer = expand("<afile>:p")
"nnoremap <leader>r :e <C-R>=fnameescape(g:latest_deleted_buffer)<CR><CR>
" Expand functions {{{
" Vim with file operation: file names and path
    " Path(absolute) to the file: "%:p"
    " Path to the directory of the file: "%:p:h"
    " File name only: "%:t"
    " Relative path: "%"
"Copy the full file path to windows clipboard.
nnoremap Y :let @* = expand("%:p")<CR>
"Copy the file name to windows clipboard.
nnoremap yyy :let @* = expand("%:p:t")<CR>
nnoremap DDD :call delete(expand('%'))<CR>:bclose<CR>
nnoremap DD :call delete(expand('%'))<CR>
"Now using leaders:
" Full path
nnoremap <leader><leader>f :let @* = expand("%:p")<CR>
" Name only, without extension
nnoremap <leader><leader>n :let @* = expand("%:t:r")<CR>
" Extension.
nnoremap <leader><leader>e :let @* = expand("%:t:e")<CR>
" Parent directory, full.
nnoremap <leader><leader>p :let @* = expand("%:p:h")<CR>
"}}}


" avoid the ESC on the left top corner!
"inoremap jk <ESC>l
inoremap <C-]> <ESC>
" Shortcut for directories
    " Rules: the cab shortcuts shall not used as query item;
    "        the cab shortcuts shall be most-usually-used items.
cab drop_dir C:/users/llinfeng/dropbox
cab hoome C:/users/llinfeng
cab template C:/vim/vimfiles/bundle/vim-latex-suite/ftplugin/latex-suite/templates
cab ~ C:\users\llinfeng
cab ftpl C:\vim\vimfiles\ftplugin
" Shortcut for files.
cab bat_dir c:\Users\llinfeng\Dropbox\Tool\bat_file
" Color scheme switching:
"cab pap colorscheme papayawhip
" Shortcut for command-line deleting empty lines!
cab empty v/\S/d
cab WW w! C:/users/llinfeng/Desktop/Tasks.txt
cab Ww w! C:/users/llinfeng/Desktop/Tasks.txt
cab tt w! C:/users/llinfeng/Desktop/Tasks.txt
cab t w! C:/users/llinfeng/Desktop/Tasks.txt
"cab TODO w! C:/users/llinfeng/Desktop/Tasks.txt
"cab todo w! C:/users/llinfeng/Desktop/Tasks.txt
"cab task w! C:/users/llinfeng/Desktop/Tasks.txt
cab ILL e C:/Users/llinfeng/Dropbox/Wiki/Warehouse/illusion.wiki

" Supporting function that deletes the trailing space entered though expending abbreviation. (This function may serve for some plugin)
func! Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunc
" Sample for using natural-input method for snippet-ing!
"iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>
" ==> if (<cursor here>)
" <C-K> in visual mode to replace gq
vnoremap <c-k> gq<CR>

" Making sure that the *.tex files come first upon wildcard completion
set suffixes+=.log
set suffixes+=.bcf
set suffixes+=.xml
set suffixes+=.nav
set suffixes+=.snm
set suffixes+=.toc
set suffixes+=.latexmain


vnoremap <leader>q gq
vnoremap q gq



" Vim-R-plugin{{{
"let vimrplugin_r_path = 'C:\\Program Files\\R\\R-3.2.3\\bin\\i386'
" }}}

" {{{
" Python-mode
" Activate rope
" Keys:
" K Show python docs
" <Ctrl-Space> Rope autocomplete
" <Ctrl-c>g Rope goto definition
" <Ctrl-c>d Rope show documentation
" <Ctrl-c>f Rope find occurrences
" <Leader>b Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[ Jump on previous class or function (normal, visual, operator modes)
" ]] Jump on next class or function (normal, visual, operator modes)
" [M Jump on previous class or method (normal, visual, operator modes)
" ]M Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0
" }}}




" Vim-indent-guidelines {{{
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd guibg=red ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4
"}}}



" Unique for Linfeng {{{
"Z for quitting.
nnoremap Z :wall!<CR>:qa<CR>
vnoremap Z <ESC>:wall!<CR>:qa<CR>
    nnoremap gZ :wall!<CR>:qa<CR>
    map z1<cr> <nop>
" Spell checking!
nnoremap aa [sz=1<CR><ESC><c-o>
inoremap aa <ESC>[sz=1<CR><ESC><C-O>a
"nnoremap AA [sz=1<CR><ESC><c-o>
"inoremap AA <ESC>[sz=1<CR><ESC><C-O>
"nnoremap ss ]so=1<CR><ESC>
"inoremap qq <ESC>]sz=1<CR>ea
"nnoremap SS ]sz=1<CR><ESC>
"inoremap SS <ESC>]sz=1<CR>ea
" Mapping anything to jj is not a good idea.
nnoremap KK ]sz=1<CR><ESC><c-o>
inoremap kk <ESC>]sz=1<CR>a
"inoremap  kk <ESC>[sz=
"inoremap  KK <ESC>[sz=
"nnoremap  KK <ESC>[sz=
"in remap  ff <SEC>]so=
"nnoremap  ff <ESC>]sz=
nnoremap II [sz=
" iab mapping: saving keystrokes.
"inorea <buffer> sj <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>
iab RQ <c-r>=strftime("20%y-%m-%d")<cr>
iab homo homoscedasticity
iab hetero heteroscedasticity
iab eq equilibrium
" }}}
" }}}


" Disable concealing
set conceallevel=0

nnoremap <F1> / \{2,}<CR>
inoremap <F1> <esc>/ \{2,}<CR>

" Snippet {{{
imap <tab> <Plug>snipMateNextOrTrigger
smap <tab> <Plug>snipMateNextOrTrigger
imap <c-q> <Plug>snipMateNextOrTrigger
smap <c-q> <Plug>snipMateNextOrTrigger
"}}}

"let $PYTHONHOME = 'C:/python27'
let $PYTHONHOME = 'c:/Program Files (x86)/Anaconda2/'

" Section for Auto Commands
autocmd bufreadpre *.tmp setlocal textwidth=80
autocmd bufreadpre *.txt setlocal textwidth=80
autocmd bufreadpre *.txt setlocal textwidth=80
autocmd bufreadpre *.txt setlocal textwidth=80

"autocmd TextChanged,TextChangedI <buffer> silent write

" Source the macros
source c:\Users\llinfeng\Dropbox\Tool_Private\Vim-Spelling\macro_sourcing.vim
command! Macro e c:\Users\llinfeng\Dropbox\Tool_Private\Vim-Spelling\macro_sourcing.vim
" Source the command settings (across platforms)
source c:\Users\llinfeng\Dropbox\Tool_Private\Vim-Spelling\general_setting.vim
