let s:buffer_suffix = ' # vim-test'

function! test#neovim_error_only#strategy(cmd) abort
  let l:options = {'on_exit': 's:on_exit_handler'}

  call s:close_buffer()

  belowright new | call termopen(a:cmd . s:buffer_suffix, l:options)
endfunction

function! s:close_buffer()
  if bufnr(s:buffer_suffix) != -1
    execute bufnr(s:buffer_suffix) . 'bdelete!'
  endif
endfunction

function! s:on_exit_handler(job_id, exit_code)
  if a:exit_code == 0
    call s:close_buffer()
  endif
endfunction
