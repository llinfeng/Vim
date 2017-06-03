set guifont=Bitstream_Vera_Sans_Mono:h12:cANSI
command! Ff :set guifont=Bitstream_Vera_Sans_Mono:h9:cANSI
command! FF :set guifont=Bitstream_Vera_Sans_Mono:h14:cANSI

"set guifont=Bitstream_Vera_Sans_Mono:h24:cANSI
" vim-plug import:
call plug#begin('C:/Vim/plugged')
source ~/Nutstore/DotFiles/Vim_Settings/vim_plug_list.vim
command! PL e ~/Nutstore/DotFiles/Vim_Settings/vim_plug_list.vim
" General: general settings, with relative paths w.r.t. to the home folder.
source ~/Nutstore/DotFiles/Vim_Settings/vim_general.vim
command! General e ~/Nutstore/DotFiles/Vim_Settings/vim_general.vim
" Plugin specific settings:
source ~/Nutstore/DotFiles/Vim_Settings/vim_plug_settings.vim
command! PS e ~/Nutstore/DotFiles/Vim_Settings/vim_plug_settings.vim

" Source the macros
" FFunction: Sourcing functions and accompanying mappings
source ~/Nutstore/DotFiles/Vim_Settings/vim_functions.vim 
command! FFunction e ~/Nutstore/DotFiles/Vim_Settings/vim_functions.vim
" Macro: 
source ~/Nutstore/DotFiles/Vim_Settings/vim_macro.vim
command! Macro e ~/Nutstore/DotFiles/Vim_Settings/vim_macro.vim
" Mapping: 
source ~/Nutstore/DotFiles/Vim_Settings/vim_mappings.vim
command! Mpp e ~/Nutstore/DotFiles/Vim_Settings/vim_mappings.vim
command! MPP e ~/Nutstore/DotFiles/Vim_Settings/vim_mappings.vim
command! MPp e ~/Nutstore/DotFiles/Vim_Settings/vim_mappings.vim
" Iab shortcuts:
source ~/Nutstore/DotFiles/Vim_Settings/vim_iab.vim
command! Iab e ~/Nutstore/DotFiles/Vim_Settings/vim_iab.vim
" Cab shortcuts
source ~/Nutstore/DotFiles/Vim_Settings/vim_cab.vim
command! Cab e ~/Nutstore/DotFiles/Vim_Settings/vim_cab.vim
" Command shortcuts (Capacities Vim-(command line) specifications)
source ~/Nutstore/DotFiles/Vim_Settings/vim_command.vim
command! Cmd e ~/Nutstore/DotFiles/Vim_Settings/vim_command.vim
" Autocmd
source ~/Nutstore/DotFiles/Vim_Settings/vim_autocmd.vim
command! Autocmd e ~/Nutstore/DotFiles/Vim_Settings/vim_autocmd.vim

" Notes taking + ref
command! Notes e ~/SI/Notes/Notes.tex
command! NOtes e ~/SI/Notes/Notes.tex


" Machine specific Python environment
"let $PYTHONHOME = 'C:/python27'
let $PYTHONHOME = 'c:/Program Files (x86)/Anaconda2/'
cab ~ C:\users\llinfeng


" My time-keeper and eye-saver
if strftime("%H") < 6  
    set background=dark
elseif strftime("%H") >18
    set background=dark
else
    set background=light
endif
