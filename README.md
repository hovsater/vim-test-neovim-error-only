# neovim\_error\_only.vim

A custom strategy for [test.vim](https://github.com/janko-m/vim-test) that
reuses and automatically closes the test buffer on success.


## Setup

```vimscript
Plug 'kevinsjoberg/vim-test-neovim-error-only
let g:test#strategy = 'neovim_error_only'
```
