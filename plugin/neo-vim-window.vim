lua print("HI CARTER")

fun! NeoVimWindow()
  lua print("HI CARTER I AM STARTING")
  lua for k in pairs(package.loaded) do if k:match("^neo%-vim%-window") then package.loaded[k] = nil end end
    lua require("neo-vim-window").Start()
endfunction

let g:neo_vim_window_padding = 8

augroup NEOVIM_WINDOW
  autocmd!
  autocmd VimResized * :lua require("neo-vim-window").onResize()
augroup END
