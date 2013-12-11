if exists('b:did_ftplugin')
  finish
else
  let b:did_ftplugin = 1
endif

if exists('b:undo_ftplugin')
  let b:undo_ftplugin .= ' | setlocal'
else
  let b:undo_ftplugin = 'setlocal'
endif

setlocal iskeyword=@,48-57,-
let b:undo_ftplugin .= ' iskeyword<'

setlocal comments=b:--
let &l:commentstring = '-- %s'
let b:undo_ftplugin .= ' comments< commentstring<'

setlocal formatoptions+=croql
setlocal formatoptions-=t
silent! setlocal formatoptions+=j
let b:undo_ftplugin .= ' formatoptions<'

nnoremap <silent> <buffer> [[ :<C-u>call cabal#Section(1)<CR>
nnoremap <silent> <buffer> ]] :<C-u>call cabal#Section(0)<CR>
