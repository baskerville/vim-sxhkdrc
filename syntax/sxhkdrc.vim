if exists("b:current_syntax")
    finish
endif

syntax include @Shell syntax/sh.vim

syn match sxComment "^#.*$"
syn match sxHotkey "[^ #].*" contains=sxKeysym,sxModifier,sxPlus,sxSemiColon,sxSequence
syn match sxCommand "^ .*$" containedin=ALL contains=@Shell
syn match sxKeysym "[^ {,}+-;]\+" contained contains=sxAction
syn match sxAction "[@!:]" contained
syn match sxSemiColon ";" contained
syn match sxPlus "+" contained
syn match sxComma "," contained
syn match sxHyphen "-" contained
syn keyword sxModifier super hyper meta alt control ctrl shift mode_switch lock mod1 mod2 mod3 mod4 mod5 contained
syn region sxSequence matchgroup=sxBrace start=/{/ end=/}/ contained keepend oneline contains=sxKeysym,sxModifier,sxPlus,sxComma,sxHyphen,sxSemiColon

hi def link sxComment Comment
hi def link sxModifier Keyword
hi def link sxKeysym Identifier
hi def link sxAction Special
hi def link sxBrace Special
hi def link sxPlus Delimiter
hi def link sxSemiColon Delimiter
hi def link sxComma Delimiter
hi def link sxHyphen Delimiter

let b:current_syntax = "sxhkdrc"
