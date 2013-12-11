"{{{1 Intro
if exists('b:current_syntax')
  finish
endif

syntax case match

"{{{1 Sections
syntax region cabalSectionArgument matchgroup=cabalSectionLabel start='\v^\k+>\ze\s*\_[^:]' end='$' oneline
highlight default link cabalSectionArgument cabalType
highlight default link cabalSectionLabel cabalLabel

"{{{1 Properties
syntax region cabalPropertyValue matchgroup=cabalPropertyField start='\v^\z(\s*)\k+\s*\:' end='\v\ze\n%(\s{-}\z1@!)=\S' contains=@Spell
highlight default link cabalPropertyValue cabalString
highlight default link cabalPropertyField cabalIdentifier

"{{{1 Conditionals
syntax region cabalCondition matchgroup=cabalIfElse start='\v^\s+<%(if|else)>' end='$' oneline
highlight default link cabalIfElse cabalConditional

syntax keyword cabalTest os arch impl flag contained containedin=cabalCondition
highlight default link cabalTest cabalBoolean

syntax keyword cabalBool true false contained containedin=cabalCondition
highlight default link cabalBool cabalBoolean

syntax match cabalOp '\V!\|||\|&&' contained containedin=cabalCondition
highlight default link cabalOp cabalOperator

syntax match cabalDelim '[()]' contained containedin=cabalCondition
highlight default link cabalDelim cabalDelimiter

"{{{1 Comments
syntax region cabalLineComment matchgroup=cabalCommentSymbol start='\v^\s*\-{2}' end='$' oneline contains=@Spell
highlight default link cabalLineComment cabalComment
highlight default link cabalCommentSymbol cabalSpecial

"{{{1 Highlighting groups
highlight default link cabalComment Comment

highlight default link cabalConstant Constant
highlight default link cabalString String
highlight default link cabalCharacter Character
highlight default link cabalNumber Number
highlight default link cabalBoolean Boolean
highlight default link cabalFloat Float

highlight default link cabalIdentifier Identifier
highlight default link cabalFunction Function

highlight default link cabalStatement Statement
highlight default link cabalConditional Conditional
highlight default link cabalRepeat Repeat
highlight default link cabalLabel Label
highlight default link cabalOperator Operator
highlight default link cabalKeyword Keyword
highlight default link cabalException Exception

highlight default link cabalPreProc PreProc
highlight default link cabalInclude Include
highlight default link cabalDefine Define
highlight default link cabalMacro Macro
highlight default link cabalPreCondit PreCondit

highlight default link cabalType Type
highlight default link cabalStorageClass StorageClass
highlight default link cabalStructure Structure
highlight default link cabalTypedef Typedef

highlight default link cabalSpecial Special
highlight default link cabalSpecialChar SpecialChar
highlight default link cabalTag Tag
highlight default link cabalDelimiter Delimiter
highlight default link cabalSpecialComment SpecialComment
highlight default link cabalDebug Debug

highlight default link cabalUnderlined Underlined

highlight default link cabalIgnore Ignore

highlight default link cabalError Error

highlight default link cabalTodo Todo

"{{{1 Outro
let b:current_syntax = 'cabal'
