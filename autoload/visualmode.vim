let g:visualmode_sequence = get(g:, 'visualmode_sequence', {
\ 'n'  : "\<C-V>",
\ '' : "v",
\ 'v'  : "V",
\ 'V'  : "\<Esc>",
\})

function! visualmode#toggle() abort
  call feedkeys(get(g:visualmode_sequence, mode(), "v"), 'n')
  return ''
endfunction
