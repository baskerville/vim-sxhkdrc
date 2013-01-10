if exists("b:current_syntax")
    finish
endif

syntax include @Shell syntax/sh.vim

syn match sxMapping "[^ #].*" contains=sxKey,sxMod,sxConj,sxTemplate
syn match sxKey "[^ {,}+]\+" contained contains=sxKeyMod
syn match sxKeyMod "[!@]" contained
syn keyword sxMod super hyper meta alt control ctrl shift mode_switch lock mod1 mod2 mod3 mod4 mod5 contained
syn match sxConj "+" contained
syn region sxTemplate matchgroup=sxBrace start=/{/ end=/}/ contained keepend oneline contains=sxKey,sxMod,sxConj,sxComma
syn match sxComma "," contained


syn match sxComment "^#.*$"
syn match sxCmd "^ .*$" containedin=ALL contains=@Shell

hi def link sxKey Identifier
hi def link sxKeyMod Special
hi def link sxMod Keyword
hi def link sxBrace Special
hi def link sxConj Delimiter
hi def link sxComma Delimiter
hi def link sxComment Comment

let b:current_syntax = "sxhkdrc"
