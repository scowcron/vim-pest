" Vim syntax file
" language: Pest Grammar Specification
" maintainer: Nathan Scowcroft
" latest revision: 16 November 2017

if exists("b:current_syntax")
	finish
endif

syn keyword pestTodo contained TODO XXX FIXME NOTE
syn match pestComment "//.*$" contains=pestTodo
syn region pestStringI start='^"' end='"' skip='\\"'
syn region pestStringS start='"' end='"' skip='\\"'
syn match pestCharacter "'.'"
syn keyword pestSpecialRule whitespace comment any soi eoi pop peek
syn match pestRuleName "[a-zA-Z_][a-zA-Z0-9_]*" contained
syn match pestRuleDef "[a-zA-Z_][a-zA-Z0-9_]*\s*=" contains=pestRuleName
syn region pestGroup start="(" end=")" fold transparent
syn region pestRuleBody start="{" end="}" fold transparent contains=ALLBUT,pestRuleName,pestRuleDef,pestModifier
syn match pestModifier "[_$@!]"
syn match pestJoinOp "[~|]"
syn match pestNumOp "{\s*\d\+\s*\(,\s*\d\+\s*\)\?}\|*\|+" contained

hi def link pestStringI String
hi def link pestStringS String
hi def link pestCharacter Character
hi def link pestSpecialRule Keyword
hi def link pestRuleName Identifier
hi def link pestTodo Todo
hi def link pestComment Comment
hi def link pestModifier Operator
hi def link pestJoinOp Operator
hi def link pestNumOp Operator
