# Neovim Configuration Guide

This is a guide and cheat sheet for the Neovim configuration based on ThePrimeagen's `init.lua`.

## Installation

1. **Clone the necessary repositories:**

   ```bash
   git clone https://github.com/ThePrimeagen/init.lua.git
   ```

2. **Install external dependencies:**

   - **ripgrep:**

     ```bash
     brew install ripgrep
     ```

   - **deno:**

     ```bash
     brew install deno
     ```

3. **Copy the configuration:**
   **Warning:** This will overwrite your existing Neovim configuration. Back it up first.

   ```bash
   cp -R init.lua/* ~/.config/nvim/
   ```

4. **Launch Neovim:**
   Open Neovim. The `lazy.nvim` plugin manager will automatically install all the plugins.

## Keybindings

The leader key is `Space`.

### General

| Keybinding         | Action                                           |
| ------------------ | ------------------------------------------------ |
| `<leader>pv`       | Open file explorer (`Ex`)                        |
| `<leader>f`        | Format code with `conform.nvim`                  |
| `<leader>s`        | Search and replace for the word under the cursor |
| `<leader>x`        | Make the current file executable                 |
| `<leader><leader>` | Source the current file (`so`)                   |
| `Q`                | No operation (disabled)                          |
| `<C-f>`            | Open `tmux-sessionizer` in a new window          |
| `<M-h>`            | Open `tmux-sessionizer` in a vertical split      |
| `<M-H>`            | Open `tmux-sessionizer` in a new session         |

### Navigation

| Keybinding  | Action                            |
| ----------- | --------------------------------- |
| `J`         | Move line down                    |
| `K`         | Move line up                      |
| `<C-d>`     | Scroll down and center            |
| `<C-u>`     | Scroll up and center              |
| `n`         | Next search result (centered)     |
| `N`         | Previous search result (centered) |
| `<C-k>`     | Next item in quickfix list        |
| `<C-j>`     | Previous item in quickfix list    |
| `<leader>k` | Next item in location list        |
| `<leader>j` | Previous item in location list    |

### Clipboard

| Keybinding  | Action                                 |
| ----------- | -------------------------------------- |
| `<leader>y` | Yank to system clipboard               |
| `<leader>Y` | Yank line to system clipboard          |
| `<leader>d` | Delete without yanking                 |
| `<leader>p` | Paste without yanking (in visual mode) |

### Go Development

| Keybinding   | Action                           |
| ------------ | -------------------------------- |
| `<leader>ee` | Insert Go error handling block   |
| `<leader>ea` | Insert `assert.NoError(err, "")` |
| `<leader>ef` | Insert `log.Fatalf` error block  |
| `<leader>el` | Insert logger error block        |

### Harpoon

| Keybinding      | Action                         |
| --------------- | ------------------------------ |
| `<leader>a`     | Add file to Harpoon list       |
| `<leader>A`     | Prepend file to Harpoon list   |
| `<C-e>`         | Toggle Harpoon quick menu      |
| `<C-h>`         | Go to file 1 in Harpoon list   |
| `<C-t>`         | Go to file 2 in Harpoon list   |
| `<C-n>`         | Go to file 3 in Harpoon list   |
| `<C-s>`         | Go to file 4 in Harpoon list   |
| `<leader><C-h>` | Replace file 1 in Harpoon list |
| `<leader><C-t>` | Replace file 2 in Harpoon list |
| `<leader><C-n>` | Replace file 3 in Harpoon list |
| `<leader><C-s>` | Replace file 4 in Harpoon list |

### LSP & Completion

| Keybinding  | Action                          |
| ----------- | ------------------------------- |
| `<C-p>`     | Select previous completion item |
| `<C-n>`     | Select next completion item     |
| `<C-y>`     | Confirm completion              |
| `<C-Space>` | Trigger completion              |

## Plugins

This configuration uses `lazy.nvim` to manage plugins. Here are some of the key plugins included:

- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig):** Configures the built-in LSP client.
- **[mason.nvim](https://github.com/williamboman/mason.nvim):** Manages LSP servers, DAP servers, linters, and formatters.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp):** Autocompletion plugin.
- **[harpoon](https://github.com/ThePrimeagen/harpoon):** File marking and navigation.
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim):** Fuzzy finder.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter):** Syntax highlighting and code parsing.
- **[conform.nvim](https://github.com/stevearc/conform.nvim):** Code formatting.
- **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim):** Utility functions for other plugins.
- **[gopls](https://github.com/golang/tools/tree/master/gopls):** The official Go language server.

## Commands

| Command       | Description                                    |
| ------------- | ---------------------------------------------- |
| `:Ex`         | Open the file explorer.                        |
| `:LspRestart` | Restart the LSP server for the current buffer. |
