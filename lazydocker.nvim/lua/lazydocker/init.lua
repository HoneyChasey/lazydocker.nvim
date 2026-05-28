-- lazydocker.nvim/lua/lazydocker/init.lua --
local M = {}

function M.open()
  -- Create an empty buffer
  local buf = vim.api.nvim_create_buf(false, true)

  -- Open a floating window in the center
  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width  = math.floor(vim.o.columns * 0.9),
    height = math.floor(vim.o.lines   * 0.9),
    col    = math.floor(vim.o.columns * 0.05),
    row    = math.floor(vim.o.lines   * 0.05),
    style  = "minimal",
    border = "rounded",
  })

  -- Run lazydocker inside it
  vim.fn.jobstart("lazydocker", { term = true })
  vim.cmd("startinsert")
end

function M.setup()
  vim.keymap.set("n", "<leader>ld", M.open, { desc = "Open lazydocker" })
end

return M
