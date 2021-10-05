augroup NEOVIM_WINDOW
  autocmd!
  autocmd CursorMoved * silent! lua print("Hello World - Carter")
augroup END
