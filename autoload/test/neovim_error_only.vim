let s:buffer_suffix = ' # vim-test'

function! test#neovim_error_only#strategy(cmd) abort
  let l:options = {'on_exit': function('s:on_exit_handler')}
  let term_position = get(g:, 'test#neovim_error_only#term_position', 'botright')

  call s:close_buffer()

  execute term_position . ' new' | call termopen(a:cmd . s:buffer_suffix, l:options) | wincmd p
endfunction

function! s:close_buffer()
  if bufnr(s:buffer_suffix) != -1
    execute bufnr(s:buffer_suffix) . 'bdelete!'
  endif
endfunction

function! s:go_to_buffer()
  if bufwinnr(s:buffer_suffix) != -1
    execute bufwinnr(s:buffer_suffix) . 'wincmd w'
  endif
endfunction

function! s:on_exit_handler(job_id, exit_code, event)
  if a:exit_code == 0
    call s:close_buffer()
  else
    call s:go_to_buffer()
  endif
endfunction
