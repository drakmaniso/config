if exists("b:current_syntax")
	finish
endif

syn keyword odoTopKeyword module using public private
syn keyword odoKeyword type alias interface concept trait data pointer object
syn keyword odoKeyword ref box from
syn keyword odoKeyword with forall require ensure do
syn keyword odoKeyword if then else case of when
syn keyword odoKeyword or and to
syn keyword odoKeyword is as
syn keyword odoKeyword own give
syn keyword odoKeyword for in while loop
syn keyword odoKeyword function func

syn keyword odoEnd end

syn match odoOperator "\v\=\="
syn match odoOperator "\v\>"
syn match odoOperator "\v\<"
syn match odoOperator "\v\>\="
syn match odoOperator "\v\<\="
syn match odoOperator "\v\+"
syn match odoOperator "\v\-"
syn match odoOperator "\v\*"
syn match odoOperator "\v\/"

syn match odoArrow "\v\-\>"

syn match odoComment "--.*$"
syn match odoComment "#.*$"

syn match odoNumber "\v<\d+>"
syn match odoNumber "\v<\d+\.\d+>"
syn match odoNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syn match odoNumber "\v<0x\x+([Pp]-?)?\x+>"
syn match odoNumber "\v<0b[01]+>"
syn match odoNumber "\v<0o\o+>"

syn match odoIdentifier "\v<\l[a-z0-9_]*>"

syn match odoType       "\v<\u[a-z0-9_]*>\!?"
"syn match odoModuleQualif      "\v<\u[a-z0-9_]*>\."

"syn match odoFunctionCall "\v'<\l[a-z0-9_]*>:?"
"syn match odoFunctionCall "\v<\l[a-z0-9_]*>:"

syn region odoDefinition start="\v^\s*[A-Za-z]" end="\v(\s|[A-Za-z0-9_])\=(\s|\n|[A-Za-z0-9_])" 
	\ oneline
	\ contains=odoToPDefinitionName,odoDefinitionName,odoKeyword,odoIdentifier,odoType,odoDot,odoColon,odoComma,odoBracket,odoArrow,odoKeyword
syn match odoDefinitionName "\v^\s+<[A-Za-z][a-z0-9_]*>" contained containedin=odoDefinition
syn match odoTopDefinitionName "\v^<[A-Za-z][a-z0-9_]*>" contained containedin=odoDefinition

syn match odoBracket "[(){}\[\]]"
syn match odoDot "\v\."
syn match odoTick "\v'"
syn match odoColon "\v:"
syn match odoComma "\v,"
syn match odoSemicolon "\v;"
syn match odoArrow "\v-\v>"

syn region odoString start="\"" skip="\\\"" end="\""


" Links

hi def link odoTopKeyword Include
hi def link odoKeyword Keyword
hi def link odoEnd Statement
hi def link odoDefinitionName Function
hi def link odoTopDefinitionName Function
"hi def link odoFunctionCall Normal
hi def link odoIdentifier Identifier
hi def link odoComment Comment
hi def link odoDelimiter Delimiter
hi def link odoString String
hi def link odoNumber Number
hi def link odoType Type
"hi def link odoModuleQualif Type

hi def link odoOperator Operator

hi def link odoBracket    Delimiter
hi def link odoDot        Delimiter
hi def link odoTick       Delimiter
hi def link odoColon      Delimiter
hi def link odoComma      Delimiter
hi def link odoSemicolon  Delimiter
hi def link odoArrow Normal
