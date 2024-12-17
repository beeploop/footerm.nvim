# footerm.nvim

A quality of life improvement to the neovim builtin terminal. It lets you quickly
open and close the terminal as a floating window at the center of the screen. It
is also customized to allow you to use `Esc` key to exit terminal mode instead of
the builtin awkward command `Ctrl-\ + Ctrl-n`.

# Why?

There is no big reason really. You can quickly do this on your own in your own config.
I just want to use this as my first taste in making custom neovim extension.

# Installation

- Packer
```bash
use 'beeploop/footerm.nvim'
```

- Lazy
```lua
{ 'beeploop/footerm.nvim' }
```

# Usage

You can use it via command:
```lua
:lua require("footerm.nvim").cmd_open()
```

or

```lua
:lua require("footerm.nvim").cmd_close()
```

or create a mapping:
```lua
-- to open
vim.keymap.set("n", "<leader>co", require("footerm.nvim").cmd_open, {})

-- to close
vim.keymap.set("n", "<leader>cc", require("footerm.nvim").cmd_close, {})
```

