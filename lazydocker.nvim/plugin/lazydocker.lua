-- The files inside plugin/ folder will be executed when Neovim starts --

-- Just check that lazydocker is installed on the system
if vim.fn.executable("lazydocker") ~= 1 then
  vim.notify("lazydocker not found in PATH", vim.log.levels.WARN)
end
