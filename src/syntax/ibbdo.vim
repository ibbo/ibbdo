" Vim syntax file
" Language: IbboDo todo list
" Maintainer: Thomas Ibbotson
" Latest Revision: 29 May 2014

if exists("b:current_syntax")
    finish
endif

syn match header '== .\+ =='
syn match majorItem '^-\s.*' contains=geck
syn match minorItem '^--\s.*' contains=geck
syn match geck '\<g[0-9]\+\>'

let b:current_syntax = "ibbdo"

hi def link header            Type
hi def link majorItem         Constant
hi def link geck              Identifier
hi def link minorItem         Comment
