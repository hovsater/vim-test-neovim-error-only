if exists("g:loaded_test_neovim_error_only")
  finish
endif

let g:loaded_test_neovim_error_only = 1

let g:test#custom_strategies = {
      \ 'neovim_error_only': function('test#neovim_error_only#strategy')}
