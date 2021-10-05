let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run our plugin
command! NeoVimWindow lua require("neo-vim-window").Start()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

augroup NEOVIM_WINDOW
  autocmd!
  autocmd VimResized * :lua require("neo-vim-window").onResize()
augroup END
