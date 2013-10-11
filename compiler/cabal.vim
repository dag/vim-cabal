if exists('g:current_compiler')
  finish
endif

CompilerSet errorformat=%f:%l:%c:\ %tarning:\ %m,%W%f:%l:%c:\ Warning:,%E%f:%l:%c:,%+C\ \ \ \ %m,%-Z%[%^\ ],%-Z,%-G%s,%-G
CompilerSet makeprg=cabal\ build

let g:current_compiler = 'cabal'
