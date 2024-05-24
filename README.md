# Neovim (NvChad) Configuration

#### Welcome to my Neovim (NvChad) configuration. This setup includes a variety of plugins, key mappings, and syntax highlighting designed to enhance your coding experience.

# Installation
## Debian
```bash
sudo mv ~/.local/share/nvim/ ~/.local/share/nvim.bak &&
sudo mv ~/.config/nvim/ ~/.config/nvim.bak &&
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt install -y git &&
git clone https://github.com/Kairu-bit/nvim-config.git ~/.config/nvim/ &&
nvim
```
## Termux
```bash
mv ~/.local/share/nvim/ ~/.local/share/nvim.bak &&
mv ~/.config/nvim/ ~/.config/nvim.bak &&
pkg update -y &&
pkg upgrade -y &&
pkg install -y git &&
git clone https://github.com/Kairu-bit/nvim-config.git ~/.config/nvim/ &&
nvim
```
After lazy plugins installation run this nvim command:
``
:MasonInstallAll
``

## Plugins

The following plugins are included in this configuration:

- **`mhartington/formatter.nvim`**: A format runner for Neovim.
- **`shellRaining/hlchunk.nvim`**: Highlight code chunks.
- **`folke/trouble.nvim`**: A pretty list for showing diagnostics, references, telescope results, quickfix and location lists.
- **`jose-elias-alvarez/null-ls.nvim`**: Use Neovim as a language server to inject LSP diagnostics, code actions, and more.
- **`MunifTanjim/prettier.nvim`**: Prettier plugin for Neovim.
- **`norcalli/nvim-colorizer.lua`**: A high-performance colorizer for Neovim.
- **`gen740/SmoothCursor.nvim`**: Smooth cursor animation.
- **`karb94/neoscroll.nvim`**: Smooth scrolling for Neovim.
- **`preservim/nerdtree`**: A tree explorer plugin for navigating the filesystem.
- **`ryanoasis/vim-devicons`**: Adds file type icons to Vim plugins such as NERDTree.
- **`folke/noice.nvim`**: Fancy notifications for Neovim.
- **`nvim-telescope/telescope-file-browser.nvim`**: File browser extension for Telescope.
- **`folke/todo-comments.nvim`**: Highlight and search for TODO comments in your code.
- **`axkirillov/easypick.nvim`**: A simple way to create Telescope pickers.
- **`neph-iap/easycolor.nvim`**: Color picker for Neovim.
- **`ziontee113/icon-picker.nvim`**: A Neovim plugin for picking icons.
- **`glepnir/nerdicons.nvim`**: Icon picker for Neovim.
- **`stevearc/conform.nvim`**: Conforming formatter for Neovim.
- **`neovim/nvim-lspconfig`**: Quickstart configurations for the Nvim LSP client.
- **`williamboman/mason.nvim`**: Manage external editor tooling such as LSP servers, DAP servers, linters, and formatters.
- **`nvim-treesitter/nvim-treesitter`**: Treesitter configurations and abstraction layer.

## Key Mappings

### General

- **File Explorer**:
  - `Leader + Leader + f`: Open Telescope file browser in normal mode
  - `Alt + f`: Open Telescope file browser in insert mode

- **Save and Quit**:
  - `Alt + k`: Save file in normal and insert modes
  - `Alt + q`: Save and quit file in normal and insert modes
  - `Alt + x`: Quit without saving in normal mode

- **Buffer Navigation**:
  - `Alt + l`: Go to next buffer in normal and insert modes
  - `Alt + p`: Go to previous buffer in insert mode

### Plugins

- **Icon Picker**:
  - `Alt + i`: Open IconPicker in insert mode

- **Color Picker**:
  - `Alt + 2`: Open ColorPicker in normal mode

- **Trouble**:
  - `Alt + 3`: Toggle Trouble in normal and insert modes

- **Todo Trouble**:
  - `Alt + 4`: Open TodoTrouble in normal and insert modes

### Run Scripts

- **Python**:
  - `Alt + 1`: Run Python script in normal and insert modes

- **JavaScript**:
  - `Alt + 1`: Run JavaScript script in normal and insert modes

- **Lua**:
  - `Alt + 1`: Run Lua script in normal and insert modes

- **Bash**:
  - `Alt + 1`: Run Bash script in normal and insert modes

- **C/C++**:
  - `Alt + 1`: Compile and run C/C++ program in normal and insert modes

- **Go**:
  - `Alt + 1`: Run Go program in normal and insert modes

- **PHP**:
  - `Alt + 1`: Run PHP script in normal and insert modes

- **Ruby**:
  - `Alt + 1`: Run Ruby script in normal and insert modes

- **Rust**:
  - `Alt + 1`: Compile and run Rust program in normal and insert modes

- **Java**:
  - `Alt + 1`: Compile and run Java program in normal and insert modes

## Contact Information

- **[Kyle Tilano](https://www.facebook.com/KairuxDev)** on Facebook
- **[KairuDev](https://t.me/KairuDev)** on Telegram
