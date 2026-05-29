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
  },
}
```

## Usage

Press `<leader>ld` to open lazydocker in a floating window.
Press `q` inside lazydocker to close it.
