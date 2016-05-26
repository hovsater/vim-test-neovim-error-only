# neovim\_error\_only.vim

A custom [Neovim](https://neovim.io/) strategy for
[test.vim](https://github.com/janko-m/vim-test) that reuses the terminal buffer
for running tests and automatically close buffer on success.


## Setup

```vim
" Add dependency
Plug 'kevinsjoberg/vim-test-neovim-error-only'

" Tell test.vim to use strategy
let g:test#strategy = 'neovim_error_only'
```
