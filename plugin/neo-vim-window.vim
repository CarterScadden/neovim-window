lua print("HI CARTER")
NeoVimWindow()

fun! NeoVimWindow()
  lua print("HI CARTER 2")
  lua for k in pairs(package.loaded) do if k:match("^neo%-vim%-window") then package.loaded[k] = nil end end
    lua require("neo-vim-window").Start()
endfun

let g:neo_vim_window_padding = 8

augroup NEOVIM_WINDOW
  autocmd!
  autocmd VimResized * :lua require("neo-vim-window").onResize()
augroup END
