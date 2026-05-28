local M = {}

function M.open()
  local buf = vim.api.nvim_create_buf(false, true)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width  = math.floor(vim.o.columns * 0.9),
    height = math.floor(vim.o.lines   * 0.9),
    col    = math.floor(vim.o.columns * 0.05),
    row    = math.floor(vim.o.lines   * 0.05),
    style  = "minimal",
    border = "rounded",
  })

  vim.fn.jobstart("lazydocker", {
    term = true,
    on_exit = function()
      vim.api.nvim_win_close(win, true)
    end
  })

  vim.cmd("startinsert")
end

function M.setup()
  vim.keymap.set("n", "<leader>ld", M.open, { desc = "Open lazydocker" })
end

return M
