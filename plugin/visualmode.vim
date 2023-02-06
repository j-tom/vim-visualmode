if exists('g:loaded_visualmode')
  finish
endif
let g:loaded_visualmode = 1

nnoremap v <cmd>call visualmode#toggle()<CR>
xnoremap v <cmd>call visualmode#toggle()<CR>
