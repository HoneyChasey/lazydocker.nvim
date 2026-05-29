# lazydocker.nvim
Integration of lazydocker inside neovim, with minimal code.

## Requirements 
- Neovim >= 0.7.0
- [lazydocker](https://github.com/jesseduffield/lazydocker) installed and in your PATH

## Installation

### Lazy 

```lua
return {
  "HoneyChasey/lazydocker.nvim",
  opts = {},
  keys = {
    {
    "<leader>ld", -- or change with your mapping key
      function()
        require("lazydocker").open()
      end,
      desc = "Open Lazydocker",
    },
  },
}
```

## Usage

Press `<leader>ld` to open lazydocker in a floating window.
Press `q` inside lazydocker to close it.
