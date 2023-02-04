function! visualmode#toggle() abort
  let m = mode()
  if m =~? '^n$'
    call feedkeys("\<C-V>", 'n')
  elseif m =~? '^$'
    call feedkeys("v", 'n')
  elseif m =~? '^v$'
    call feedkeys("V", 'n')
  elseif m =~? '^V$'
    call feedkeys("\<Esc>", 'n')
  else
    call feedkeys("v", 'n')
  endif
  return ''
endfunction
