syn clear
syn match texComment   "*.*$" 

hi def link texComment  Comment 

syntax case match

" comments - single line
" note that the triple slash continuing line comment comes free
syn region stataStarComment  start=/^\s*\*/ end=/$/    contains=stataComment oneline
syn region stataSlashComment start="\s//"   end=/$/    contains=stataComment oneline
syn region stataSlashComment start="^//"    end=/$/    contains=stataComment oneline
" comments - multiple line
syn region stataComment      start="/\*"    end="\*/"  contains=stataComment

" global macros - simple case
syn match  stataGlobal /\$\a\w*/
" global macros - general case
syn region stataGlobal start=/\${/ end=/}/ oneline contains=@stataMacroGroup
" local macros - general case
syn region stataLocal  start=/`/ end=/'/   oneline contains=@stataMacroGroup

" numeric formats
syn match  stataFormat /%-\=\d\+\.\d\+[efg]c\=/
" numeric hex format
syn match  stataFormat /%-\=21x/
" string format
syn match  stataFormat /%\(\|-\|\~\)\d\+s/

" Statements
syn keyword stataConditional else if
syn keyword stataRepeat      foreach
syn keyword stataRepeat      forv[alues]
syn keyword stataRepeat      while

" Common programming commands
syn keyword stataCommand about
syn keyword stataCommand adopath
syn keyword stataCommand adoupdate
syn keyword stataCommand assert
syn keyword stataCommand break
syn keyword stataCommand by
syn keyword stataCommand cap[ture]
syn keyword stataCommand cd
syn keyword stataCommand chdir
syn keyword stataCommand checksum
syn keyword stataCommand class
syn keyword stataCommand classutil
syn keyword stataCommand compress
syn keyword stataCommand conf[irm]
syn keyword stataCommand conren
syn keyword stataCommand continue
syn keyword stataCommand cou[nt]
syn keyword stataCommand cscript
syn keyword stataCommand cscript_log
syn keyword stataCommand #delimit
syn keyword stataCommand d[escribe]
syn keyword stataCommand dir
syn keyword stataCommand discard
syn keyword stataCommand di[splay]
syn keyword stataCommand do
syn keyword stataCommand doedit
syn keyword stataCommand drop
syn keyword stataCommand edit
syn keyword stataCommand end
syn keyword stataCommand erase
syn keyword stataCommand eret[urn]
syn keyword stataCommand err[or]
syn keyword stataCommand e[xit]
syn keyword stataCommand expand
syn keyword stataCommand expandcl
syn keyword stataCommand file
syn keyword stataCommand findfile
syn keyword stataCommand format
syn keyword stataCommand g[enerate]
syn keyword stataCommand gettoken
syn keyword stataCommand gl[obal]
syn keyword stataCommand help
syn keyword stataCommand hexdump
syn keyword stataCommand include
syn keyword stataCommand infile
syn keyword stataCommand infix
syn keyword stataCommand input
syn keyword stataCommand insheet
syn keyword stataCommand joinby
syn keyword stataCommand la[bel]
syn keyword stataCommand levelsof
syn keyword stataCommand list
syn keyword stataCommand loc[al]
syn keyword stataCommand log
syn keyword stataCommand ma[cro]
syn keyword stataCommand mark
syn keyword stataCommand markout
syn keyword stataCommand marksample
syn keyword stataCommand mata
syn keyword stataCommand matrix
syn keyword stataCommand memory
syn keyword stataCommand merge
syn keyword stataCommand mkdir
syn keyword stataCommand more
syn keyword stataCommand net
syn keyword stataCommand nobreak
syn keyword stataCommand n[oisily]
syn keyword stataCommand note[s]
syn keyword stataCommand numlist
syn keyword stataCommand outfile
syn keyword stataCommand outsheet
syn keyword stataCommand _parse
syn keyword stataCommand pause
syn keyword stataCommand plugin
syn keyword stataCommand post
syn keyword stataCommand postclose
syn keyword stataCommand postfile
syn keyword stataCommand preserve
syn keyword stataCommand print
syn keyword stataCommand printer
syn keyword stataCommand profiler
syn keyword stataCommand pr[ogram]
syn keyword stataCommand q[uery]
syn keyword stataCommand qui[etly]
syn keyword stataCommand rcof
syn keyword stataCommand reg[ress]
syn keyword stataCommand rename
syn keyword stataCommand repeat
syn keyword stataCommand replace
syn keyword stataCommand reshape
syn keyword stataCommand ret[urn]
syn keyword stataCommand _rmcoll
syn keyword stataCommand _rmcoll
syn keyword stataCommand _rmcollright
syn keyword stataCommand rmdir
syn keyword stataCommand _robust
syn keyword stataCommand save
syn keyword stataCommand sca[lar]
syn keyword stataCommand search
syn keyword stataCommand serset
syn keyword stataCommand set
syn keyword stataCommand shell
syn keyword stataCommand sleep
syn keyword stataCommand sort
syn keyword stataCommand split
syn keyword stataCommand sret[urn]
syn keyword stataCommand ssc
syn keyword stataCommand su[mmarize]
syn keyword stataCommand syntax
syn keyword stataCommand sysdescribe
syn keyword stataCommand sysdir
syn keyword stataCommand sysuse
syn keyword stataCommand token[ize]
syn keyword stataCommand translate
syn keyword stataCommand type
syn keyword stataCommand unab
syn keyword stataCommand unabcmd
syn keyword stataCommand update
syn keyword stataCommand use
syn keyword stataCommand vers[ion]
syn keyword stataCommand view
syn keyword stataCommand viewsource
syn keyword stataCommand webdescribe
syn keyword stataCommand webseek
syn keyword stataCommand webuse
syn keyword stataCommand which
syn keyword stataCommand who
syn keyword stataCommand window

" Literals
syn match  stataQuote   /"/
syn region stataEString matchgroup=Nothing start=/`"/ end=/"'/ oneline contains=@stataMacroGroup,stataQuote,stataString,stataEString
syn region stataString  matchgroup=Nothing start=/"/ end=/"/   oneline contains=@stataMacroGroup

" define clusters
" Errors to catch
" taken from $VIMRUNTIME/syntax/c.vim 
" catch errors caused by wrong parenthesis, braces and brackets
syn region	stataParen	transparent start=/(/ end=/)/  contains=ALLBUT,@stataParenGroup,stataErrInBracket,stataErrInBrace
syn region	stataBracket	transparent start=/\[/ end=/]/ contains=ALLBUT,@stataParenGroup,stataErrInParen,stataErrInBrace
syn region	stataBrace	transparent start=/{/ end=/}/  contains=ALLBUT,@stataParenGroup,stataErrInParen,stataErrInBracket
syn match	stataParenError	/[\])}]/
syn match	stataBracketError	/]/
syn match	stataBraceError	/}/
syn match	stataErrInParen	contained /[\]}]/
syn match	stataErrInBracket	contained /[)}]/
syn match	stataErrInBrace	contained /[)\]]/

" assign highlight groups
hi def link stataBraceError	stataError
hi def link stataBracketError	stataError
hi def link stataErrInBrace	stataError
hi def link stataErrInBracket	stataError
hi def link stataErrInParen	stataError
hi def link stataEString	stataString
hi def link stataFormat		stataSpecial
hi def link stataGlobal		stataMacro
hi def link stataLocal		stataMacro
hi def link stataParenError	stataError
hi def link stataSlashComment	stataComment
hi def link stataStarComment	stataComment

hi def link stataCommand	Define
hi def link stataComment	Comment
hi def link stataConditional	Conditional
hi def link stataError		Error
hi def link stataMacro		Define
hi def link stataRepeat		Repeat
hi def link stataSpecial	SpecialChar
hi def link stataString		String

let b:current_syntax = "stata"

" vim: ts=8
