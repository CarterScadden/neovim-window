local function Start()
  local uiState = vim.api.nvim_list_uis()[1]
  print("Window Size!", uiState.width, uiState.height)

  local bufh = vim.api.nvim_create_buf(false, true)
  local winId = vim.api.nvim_open_win(bufh, true, {
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
  local bufh = vim.api.nvim_create_buf(false, true)
  local winId = vim.api.nvim_open_win(bufh, true, {
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
}