" Vim syntax file
" Language:   HashiCorp Configuration Language (HCL)
" Maintainer: Jussi Virtanen
" Repository: https://github.com/jvirtanen/vim-hcl
" License:    Vim

if exists('b:current_syntax')
  finish
end

syn region hclString start=/"/ end=/"/ contains=hclInterpolation
syn region hclString start=/<<-\?\z([A-Z]\+\)/ end=/^\s*\z1/ contains=hclInterpolation

syn match hclNumber /\<\d\+\([eE][+-]\?\d\+\)\?\>/
syn match hclNumber /\<\d*\.\d\+\([eE][+-]\?\d\+\)\?\>/
syn match hclNumber /\<0[xX]\x\+\>/

syn keyword hclBoolean true false

syn region hclInterpolation start=/\${/ end=/}/ contained contains=hclInterpolation

syn region hclComment start=/\/\// end=/$/    contains=hclTodo
syn region hclComment start=/\#/   end=/$/    contains=hclTodo
syn region hclComment start=/\/\*/ end=/\*\// contains=hclTodo

syn keyword hclTodo TODO FIXME XXX DEBUG NOTE contained

hi def link hclString        String
hi def link hclNumber        Number
hi def link hclBoolean       Boolean
hi def link hclInterpolation PreProc
hi def link hclComment       Comment
hi def link hclTodo          Todo

let b:current_syntax = 'hcl'
