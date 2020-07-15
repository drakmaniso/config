if exists("b:current_syntax")
	finish
endif

syn keyword graceKeyword module use
syn keyword graceKeyword fun
syn keyword graceKeyword match case of with when is end
syn keyword graceKeyword if then else
syn keyword graceKeyword or and
syn keyword graceKeyword forall
syn keyword graceKeyword where in function fn func

syn keyword graceDefinition let type alias trait
syn keyword graceDefinition public private

syn match graceDelimiter "[(){}\[\],\\:]"

syn match graceComment "--.*$"

syn region graceString start="\"" skip="\\\"" end="\""

" syn keyword graceKeyword let nextgroup=graceDefinition skipwhite
" syn match graceDefinition ".*="

hi def link graceKeyword Keyword
hi def link graceDefinition Keyword
hi def link graceComment Comment
hi def link graceDelimiter Delimiter
hi def link graceString Constant

