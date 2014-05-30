setlocal foldmethod=expr
setlocal foldexpr=GetIbbdoFold(v:lnum)

function! GetIbbdoFold(lnum)
    let numlines = line('$')
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    " A header line opens a fold at level 1
    if getline(a:lnum) =~? '== .\+ =='
        return '>1'
    endif

    " A major item opens a fold at level 2
    if getline(a:lnum) =~? '^-\s.*'
        return '>2'
    endif

    " A minor item is at fold level 2
    if getline(a:lnum) =~? '^--\s.*'
        return '2'
    endif

    " Any other lines are simply contained in their own fold
    return '-1'
endfunction
