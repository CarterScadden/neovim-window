local buffer, window

local function Start()
  local uiState = vim.api.nvim_list_uis()[1]
  print("Window Size!", uiState.width, uiState.height)

  buffer = vim.api.nvim_create_buf(false, true)
  window = vim.api.nvim_open_win(buffer, true, {
    relative="editor",
    width = width - 4,
    height = height - 4,
    col = 2,
    row = 2,
  })
end

local function Resize()
  local uiStates = vim.api.nvim_list_uis()
  local uiState = uiStates[1]
  print("Window Size!", uiState.width, uiState.height)

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
  Start = Start
  Resize = Resize
}
