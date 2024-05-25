# Neovim (NvChad) Configuration

#### Welcome to my Neovim (NvChad) configuration. This setup includes a variety of plugins, key mappings, and syntax highlighting designed to enhance your coding experience.

# Installation
## Debian
```bash
sudo mv ~/.local/share/nvim/ ~/.local/share/nvim.bak &&
sudo mv ~/.config/nvim/ ~/.config/nvim.bak &&
```
```bash
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt install -y git neovim ripgrep clang &&
git clone https://github.com/Kairu-bit/nvim-config.git ~/.config/nvim/ &&
nvim
```
## Termux
```bash
mv ~/.local/share/nvim/ ~/.local/share/nvim.bak &&
mv ~/.config/nvim/ ~/.config/nvim.bak &&
```
```bash
pkg update -y &&
pkg upgrade -y &&
pkg install -y git neovim ripgrep clang &&
git clone https://github.com/Kairu-bit/nvim-config.git ~/.config/nvim/ &&
nvim
```
After the lazy plugins installation, in normal mode, type the following and press Enter:
``
;MasonInstallAll
``

## Plugins

For a detailed list of plugins included in this configuration, see [Plugins](FEATURES.md).

## Key Mappings 

For a detailed list of key mappings included in this configuration, see [KeyMappings](KEYMAPPINGS.md).

## Contact Information

- **[Kyle Tilano](https://www.facebook.com/KairuxDev)** on Facebook
- **[KairuDev](https://t.me/KairuDev)** on Telegram

#### Soon, I will be adding support for additional programming languages, along with key mappings, plugins, and LSP for auto-completion & auto-suggestion. I'm also working on fixing syntax highlighting issues for C++, Rust, HTML, & CSS. If you have a favorite programming language that you'd like to see supported, please feel free to send me a message on Facebook or Telegram.

