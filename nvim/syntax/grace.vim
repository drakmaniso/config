if exists("b:current_syntax")
	finish
endif

syn keyword graceKeyword module import export
syn keyword graceKeyword interface
syn keyword graceKeyword fun fn
syn keyword graceKeyword where in
syn keyword graceKeyword match case of with when
syn keyword graceKeyword if then else
syn keyword graceKeyword is or and
syn keyword graceKeyword val ref own pointer data unique
syn keyword graceKeyword variant record
syn keyword graceKeyword end
syn keyword graceKeyword box take link new

syn keyword graceDefinition type class alias instance let
syn keyword graceDefinition proc procedure func
syn keyword graceDefinition def function define
syn keyword graceDefinition public private opaque

syn match graceComment "--.*$"

" syn keyword graceKeyword let nextgroup=graceDefinition skipwhite
" syn match graceDefinition ".*="

hi def link graceKeyword Keyword
hi def link graceDefinition Statement
hi def link graceComment Comment

