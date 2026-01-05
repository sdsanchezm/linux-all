# neovim and lazy vim in linux

# Install

- install
    - `sudo dnf install neovim`

- path for config: `~/.config/nvim/init.vim` (**vim and nvim**)

## Lazyvim

- [docs](https://github.com/neovim/neovim/blob/master/INSTALL.md)

- Extract
    - `sudo tar -C /opt -xzf nvim-linux64.tar.gz`

- add to path
    - `export PATH="$PATH:/opt/nvim-linux64/bin"`

- validate version
    - `nvim -v`

- Install Fonts:
    - `cp *.*tf ~/.local/share/fonts`
    - `ls ~/.local/share/fonts`
    - `fc-cache -vf`

## default sudo editor

- Reload
    - `sudo update-alternatives --config editor`
- export the variable
    - `export SUDO_EDITOR=/usr/bin/vim`
- use the sudo editor
    - `sudoedit /etc/samba/smb.conf`

## documentation
  - [here](http://www.lazyvim.org/installation)
  - `mkdir ~/.config/nvim`
  - `git clone https://github.com/LazyVim/starter ~/.config/nvim`
  - `rm -rf ~/.config/.git`
  - `nvim`
  - [here 2](https://builtin.com/software-engineering-perspectives/neovim-configuration)
