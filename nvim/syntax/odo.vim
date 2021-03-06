if exists("b:current_syntax")
	finish
endif

syn keyword odoTopKeyword module using public private
syn keyword odoKeyword ref box from
syn keyword odoKeyword by bind wrap
syn keyword odoKeyword if then else case of when match 
syn keyword odoKeyword or and to
syn keyword odoKeyword is as
syn keyword odoKeyword own give
syn keyword odoKeyword for in while loop do
syn keyword odoDefKeyword type alias interface concept trait data pointer object variant
syn keyword odoDefKeyword Type Alias Interface Concept Trait Data Pointer Object Variant
syn keyword odoDefKeyword function func fun def define let
syn keyword odoDefKeyword Function Func Fun Def Define Let
syn keyword odoDefKeyword const constant
syn keyword odoDefKeyword Const Constant
syn keyword odoDefKeyword forall require ensure
syn keyword odoKeyword owned shared boxed

syn keyword odoEnd end
syn keyword odoReturn return result

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

syn match odoComment "\v--.*$"

syn region odoMultiComment start="\v--\(" end="\v\)--"
syn region odoMultiComment start="\v--\{" end="\v\}--"
syn region odoMultiComment start="\v--\[" end="\v\]--"
syn region odoMultiComment start="\v--\<" end="\v\>--"

syn match odoNumber "\v<\d+>"
syn match odoNumber "\v<\d+\.\d+>"
syn match odoNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syn match odoNumber "\v<0x\x+([Pp]-?)?\x+>"
syn match odoNumber "\v<0b[01]+>"
syn match odoNumber "\v<0o\o+>"

syn match odoIdentifier "\v<\l[a-z0-9_]*>"

syn match odoType       "\v<\u[a-z0-9_]*>\!?"


"syn region odoDefinition start="\v^\s*[A-Za-z]" end="\v(\s|[A-Za-z0-9_])\=(\s|\n|[A-Za-z0-9_])" 
"	\ oneline
"	\ contains=odoToPFunDefName,odoFunDefName,odoToPValDefName,odoValDefName,odoKeyword,odoIdentifier,odoType,odoDot,odoColon,odoComma,odoBracket,odoArrow,odoKeyword
"syn match odoValDefName "\v^([A-Za-z0-9_,]|\s)+<[A-Za-z][A-Za-z0-9_]*>" contained containedin=odoDefinition
"syn match odoTopValDefName "\v^<[A-Za-z][A-Za-z0-9_]*>" contained containedin=odoDefinition
"syn match odoFunDefName "\v^\s+<[A-Za-z][A-Za-z0-9_]*>\ze\(" contained containedin=odoDefinition
"syn match odoTopFunDefName "\v^<[A-Za-z][A-Za-z0-9_]*>\ze\(" contained containedin=odoDefinition

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
hi def link odoEnd Keyword
hi def link odoDefKeyword Statement
hi def link odoReturn Statement
hi def link odoFunDefName Function
hi def link odoTopFunDefName Function
hi def link odoValDefName Statement
hi def link odoTopValDefName Statement
"hi def link odoFunctionCall Normal
hi def link odoIdentifier Identifier
hi def link odoComment Comment
hi def link odoMultiComment Comment
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
