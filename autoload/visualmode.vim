let s:sequence = {
\ 'n'  : "\<C-V>",
\ '' : "v",
\ 'v'  : "V",
\ 'V'  : "\<Esc>",
\ }

if exists('g:visualmode_sequence')
  let s:sequence = g:visualmode_sequence
endif

function! visualmode#toggle() abort
  call feedkeys(get(s:sequence, mode(), "v"), 'n')
  return ''
endfunction
