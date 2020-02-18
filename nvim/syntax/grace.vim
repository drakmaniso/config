if exists("b:current_syntax")
	finish
endif

syn keyword graceKeyword module import export
syn keyword graceKeyword interface
syn keyword graceKeyword func fun fn
syn keyword graceKeyword where in
syn keyword graceKeyword match case of with when
syn keyword graceKeyword if then else
syn keyword graceKeyword is or and
syn keyword graceKeyword val ref pointer data

syn keyword graceDefinition type class alias instance let
syn keyword graceDefinition proc procedure
syn keyword graceDefinition def function

syn match graceComment "--.*$"

" syn keyword graceKeyword let nextgroup=graceDefinition skipwhite
" syn match graceDefinition ".*="

hi def link graceKeyword Keyword
hi def link graceDefinition Statement
hi def link graceComment Comment

