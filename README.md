



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
