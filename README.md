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

By default a split window will be opened on the bottom, but you can configure a
different position or orientation.

Whatever you put here is passed to new - so, you may also specify size (see
:help opening-window or :help new for more info):

```vim
let test#neovim_error_only#term_position = "topleft"
let test#neovim_error_only#term_position = "vert"
let test#neovim_error_only#term_position = "vert botright 30"
```
