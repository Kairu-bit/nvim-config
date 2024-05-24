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

For a detailed list of plugins included in this configuration, see [Plugins](FEATURES.md).

## Key Mappings 

For a detailed list of key mappings included in this configuration, see [KeyMappings](KEYMAPPINGS.md).

## Contact Information

- **[Kyle Tilano](https://www.facebook.com/KairuxDev)** on Facebook
- **[KairuDev](https://t.me/KairuDev)** on Telegram
