local PADDING = 10
local NeoVimWindow = {}
local buffer, window

function NeoVimWindow:New(content, padding)
  local obj = {
    padding = padding or PADDING,
    content = width or 15,
    _width = 0,
    _height = 0,
    _buffer = vim.api.nvim_create_buf(false, true),
    _window = nil
  }

  vim.api.nvim_buf_set_text(obj._buffer, 0, 0, 20, 20, {})

  self.__index = self;
  return setmetatable(obj, self)
end


local function Start()
  local uiState = vim.api.nvim_list_uis()[1]
  print("Window Size!", uiState.width, uiState.height)
  buffer = vim.api.nvim_create_buf(false, true) -- create empty buffer
  window = vim.api.nvim_open_win(buffer, true, {
    relative="editor",
    width = width - 4,
    height = height - 4,
    col = 2,
    row = 2,
  })
end

vim.api.nvim_hide_win()

local function Resize()
  local uiStates = vim.api.nvim_list_uis()
  local uiState = uiStates[1]
  print("Resize Window Size!", uiState.width, uiState.height)

  for i = 1, #uiStates do
    print(i, vim.inspect(uiStates[i]))
  end
  --[[
  window = vim.api.nvim_open_win(buffer, true, {
    relative="editor",
    width = width - 4,
    height = height - 4,
    col = 2,
    row = 2,
  })
  --]]
end



return {
  Start = Start,
  Resize = Resize
}
