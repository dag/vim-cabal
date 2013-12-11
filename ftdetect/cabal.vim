autocmd BufRead,BufNewFile *.cabal,*/.cabal/config,cabal{.sandbox,}.config setfiletype cabal
autocmd BufRead cabal.sandbox.config setlocal readonly
